# Plan

Last updated: 2026-05-10

## Current Status

- Root `DESIGN.md` exists as the general UNICEF Brand Book 4.0 translation into the Google `DESIGN.md` format.
- `DESIGN.web-app.md` exists as the productivity and enterprise web-app variant.
- `DESIGN.quarto.md` exists as the Quarto publishing, reports, listings, and documentation variant.
- The design docs incorporate both `files/Brand Book 4.0.pdf` and the public UNICEF UX/UI design guidelines.
- The runnable Quarto example lives under `site/`.
- The Quarto example is published via GitHub Pages at `https://unicef.github.io/design.md/`.
- `site/_quarto.yml` has `website.site-url` set for the GitHub Pages project site.
- The Quarto site uses approved English UNICEF logo PNGs copied from `files/` into `site/_brand/`.
- The sidebar uses the stacked UNICEF logo variant for better fit in the side rail.
- The navbar uses a horizontal approved logo and suppresses the extra text title.
- Homepage card markup has been fixed to render as real content rather than escaped HTML.
- Listing rows have been tightened into a more editorial layout with narrower metadata, stronger title/body hierarchy, and fixed 16:9 thumbnails.
- The site has paired light/dark brand and theme files.
- GitHub Actions workflows exist for GitHub Pages deployment and screenshot baseline capture.
- `package.json` and `pnpm-lock.yaml` pin local Node tooling for `@google/design.md` and Playwright.
- `Makefile` provides local commands for preview, render, lint, check, and clean.
- `.agents/skills/playwright/SKILL.md` documents repo-specific `playwright-cli` usage.

## Current Validation Commands

Use these before committing or publishing substantial changes:

```bash
pnpm install
make check
```

What `make check` covers:

- `DESIGN.md` lint
- `DESIGN.web-app.md` lint
- `DESIGN.quarto.md` lint
- Quarto render of `site/`

Current caveat: the latest shell session used to update this plan could not find `node`, `pnpm`, or `quarto` on `PATH`, so `make check` could not be rerun in that shell. The commands above remain the expected validation path once the local toolchain is available.

For visual checks:

```bash
make render
python3 -m http.server 5360 --directory "site/_site"
playwright-cli -s=site-check open "http://127.0.0.1:5360/"
```

## Known Decisions

- Keep `DESIGN*.md` files at the repository root as reusable design artifacts.
- Keep the runnable example under `site/` as a self-contained Quarto project.
- Do not commit generated `site/_site/` or `site/.quarto/` output.
- Treat `files/Brand Book 4.0.pdf` as source material and not as an editable working file.
- Use approved logo files from `files/` for the Quarto demo instead of placeholder logos.
- Keep placeholder SVGs in `site/_brand/` only as fallback demo assets.
- Prefer semantic use of supporting colors rather than more decorative color usage.
- Use bright UNICEF Blue primarily for brand/header emphasis and darker blue for action/link roles in app contexts.

## Known Open Considerations

- The `files/` directory is large and includes the source PDF, fonts, and logo assets. Decide whether to keep the full source bundle in the repo or trim it to only the assets needed for reproducibility.
- The screenshot workflow currently captures artifacts but does not compare screenshots against committed baselines.
- The Quarto example is still sample/demo content, not production UNICEF copy.
- The site has not yet been audited with accessibility tooling such as axe or Lighthouse.
- The root `README.md` now has user-facing usage instructions, but the project could still benefit from a short release checklist before publishing future changes.

## Recommended Next Slices

### 1. Live GitHub Pages Smoke Test

Priority: highest

Goal: verify the published site matches the local build after the latest fixes.

Tasks:

- Visit `https://unicef.github.io/design.md/`.
- Check homepage cards are not escaped HTML.
- Check sidebar and navbar logo treatments.
- Check `stories.html` dates, thumbnails, and listing row layout.
- Check browser console for 404s or theme errors.
- Capture one fresh Playwright screenshot against the live URL if useful.

Why this first: it validates the actual public artifact users see.

### 2. Asset Scope And Repo Size Review

Priority: high

Goal: decide whether to commit the full `files/` source bundle or trim it.

Tasks:

- Inventory file sizes under `files/`.
- Identify which logo files and fonts are actively used.
- Decide whether the repo should preserve full source materials or only required assets plus the source PDF.
- Update README if the asset policy changes.

Why this matters: `files/` can dominate repo size and review noise.

### 3. Screenshot Baseline Hardening

Priority: high

Goal: turn the screenshot workflow from artifact capture into a more useful review tool.

Tasks:

- Add a `make screenshots` target mirroring the workflow locally.
- Decide whether screenshots should remain artifacts only or be compared against committed baselines.
- If comparing, choose where baselines live and how updates are approved.

Why this matters: visual regressions are likely for this repo, especially in Quarto styling.

### 4. Accessibility And Performance Audit

Priority: medium-high

Goal: align the Quarto example with the UNICEF UX/UI guidance around accessibility and low-bandwidth usage.

Tasks:

- Run an accessibility audit against homepage, stories page, and one post.
- Check contrast in light and dark mode.
- Check logo alt text, image alt text, heading hierarchy, and link text.
- Check page weight and image sizes.

Why this matters: the UNICEF guidelines explicitly emphasize accessibility and slow connection contexts.

### 5. Content Realism Pass

Priority: medium

Goal: make sample content feel less placeholder and more like a realistic UNICEF reporting starter.

Tasks:

- Replace generic sample post copy with realistic but still non-production examples.
- Add source-note and figure-note examples.
- Add one stronger report-style table and one accessibility-friendly chart description.
- Keep all content clearly marked as sample/demo content.

Why this matters: realistic samples make the design system easier for agents and humans to apply.

### 6. Contributor Workflow Polish

Priority: medium

Goal: reduce friction for future contributors.

Tasks:

- Add `make screenshots`.
- Add `make preview-live` or document live URL checks.
- Add a PR checklist or template for design-doc changes versus site changes.
- Mention when to run `make check` versus screenshot checks.

Why this matters: the repo now has multiple workstreams and needs lightweight process clarity.

### 7. Optional DESIGN.md Export/Interop Slice

Priority: low-medium

Goal: make the design-token layer easier to reuse outside this repo.

Tasks:

- Try `npx @google/design.md export --format tailwind DESIGN.web-app.md`.
- Try `npx @google/design.md export --format dtcg DESIGN.md`.
- Document any useful export workflows or limitations.

Why this matters: it could help users apply the UNICEF design docs in real projects faster.

## Suggested Immediate Priority

Do these next, in order:

1. Live GitHub Pages smoke test
2. Asset scope and repo size review
3. Screenshot baseline hardening

These are the highest-leverage slices before adding more features.
