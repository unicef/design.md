# Plan

Last updated: 2026-05-20

## Current Status

- Root `DESIGN.md` exists as the general UNICEF Brand Book 4.0 translation into the Google `DESIGN.md` format.
- `DESIGN.web-app.md` exists as the productivity and enterprise web-app variant.
- `DESIGN.quarto.md` exists as the Quarto publishing, reports, listings, and documentation variant.
- The design docs incorporate both `files/Brand Book 4.0.pdf` and the public UNICEF UX/UI design guidelines.
- `design-roles.md` defines the upstream source matrix, conflict policy, and canonical semantic roles.
- The semantic roles from `design-roles.md` are reflected in all three `DESIGN*.md` files.
- Each `DESIGN*.md` now includes `Usage Fit`, `Agent Priority Rules`, and `Source Conflict Policy` guidance near the top of the document body.
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
- A design-doc critique snapshot exists at `.impeccable/critique/2026-05-20T10-44-09Z__design-md.md` with a score of 30/40 and two P1 issues.

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

Current validation status: `make check` passed after the semantic role and self-containment updates.

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

## Critique Findings To Address

The first saved critique of `DESIGN*.md` scored the design-doc system 30/40. The docs are usable, source-grounded, and well supported, but they still risk misapplication by agents that consume a copied `DESIGN.md` without the surrounding repository context.

Priority findings:

- **P1: Base action-color ambiguity.** Addressed by adding semantic action roles and using `action-primary` for base primary buttons.
- **P1: Variant choice depends too much on README context.** Addressed by adding `Usage Fit` to each design doc.
- **P2: Status semantics are prose-first, not token-first.** Addressed by adding semantic status tokens to the design docs.
- **P2: Long sections need compact agent-facing summaries.** Addressed by adding `Agent Priority Rules` to each design doc.
- **P2: Conflict-resolution guidance is implicit.** Addressed by adding a source conflict policy in `design-roles.md` and each design doc.

## DAG Improvement Strategy

Do not treat the critique as a list of one-off prose edits. Treat it as feedback on the documentation-generation pipeline. The durable fix is to introduce clearer upstream nodes and validation gates so future variants remain coherent.

### Proposed DAG

```text
source materials
  -> source matrix
  -> canonical semantic model
  -> variant projections
  -> generated/maintained DESIGN*.md
  -> validation gates
  -> Quarto demonstration site
  -> screenshots/accessibility checks
```

### Source Materials Node

Inputs:

- `files/Brand Book 4.0.pdf`
- UNICEF UX/UI design guidelines
- Google/Stitch `DESIGN.md` format specification
- approved logo and font assets under `files/`

Artifact:

- `design-roles.md` records which source governs each topic: logo, color, typography, app behavior, accessibility, publishing, imagery, and partnerships

Why this matters:

- It prevents undocumented conflict resolution when Brand Book 4.0 and UX/UI app guidance emphasize different things.

### Canonical Semantic Model Node

Artifact:

- `design-roles.md` defines reusable semantic roles, such as `brand-primary`, `action-primary`, `link`, `status-success`, `status-warning`, `status-danger`, `surface`, `text`, `border`, and `data-series-*`

This now sits upstream as the source of truth for role decisions and is reflected into the three `DESIGN*.md` variants.

Why this matters:

- It fixes action-color ambiguity at the source instead of manually correcting prose in each file.
- It lets variants duplicate color values while preserving different role semantics.

### Variant Projection Node

Each `DESIGN*.md` should be treated as a projection of the canonical model plus source-specific rules.

- `DESIGN.md`: brand/general projection
- `DESIGN.web-app.md`: productivity and enterprise app projection
- `DESIGN.quarto.md`: publishing and Quarto-site projection

Each projection includes a compact `Usage Fit` section near the top of the body.

Each projection includes an `Agent Priority Rules` section with hard rules that are safe to apply when the file is copied into another repo by itself.

Why this matters:

- It reduces dependency on the root README for correct variant selection.
- It makes copied design docs more self-contained for agents.

### Conflict Policy Node

The shared policy now appears in `design-roles.md` and the design-doc projections:

- Brand Book governs identity, logo usage, photography, and core brand expression.
- UNICEF UX/UI design guidelines govern enterprise interaction patterns, labeling, forms, status semantics, and app behavior.
- Accessibility and dignity override visual mimicry when there is tension.
- Quarto docs govern implementation primitives for the demonstration site.

Why this matters:

- It gives agents a deterministic way to choose between competing instructions.

### Validation Gates Node

Keep current gates:

- `pnpm run lint:design`
- `make render`
- GitHub Pages deploy workflow
- screenshot artifact workflow

Add future gates:

- semantic-token consistency check: action/status role names should exist in expected variants
- variant-self-containment check: every variant should include `Usage Fit` and `Agent Priority Rules`
- conflict-policy check: each variant should explain how to resolve source conflicts
- accessibility/performance audit for the Quarto site

Why this matters:

- It prevents the same ambiguity from reappearing after future edits.

### Quarto Demonstration Node

The Quarto site should continue to demonstrate `DESIGN.quarto.md`, but it should not be the source of truth.

The site should consume decisions from upstream nodes:

- semantic roles for action/link/status colors
- approved logo asset manifest
- Quarto-specific layout and listing rules
- accessibility and writing guidance

Why this matters:

- It keeps implementation aligned without letting a demo-specific styling choice rewrite the design system.

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
4. Accessibility and performance audit
5. Content realism pass

The first three critique-driven DAG improvements are complete. The next highest-leverage work is validating the published site and hardening quality gates around the implementation.
