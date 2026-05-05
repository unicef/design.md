# UNICEF DESIGN.md Draft

This repository contains a draft `DESIGN.md` derived from `files/Brand Book 4.0.pdf` and shaped to follow the Google `DESIGN.md` format:

- Spec: `https://github.com/google-labs-code/design.md`
- Source PDF: `files/Brand Book 4.0.pdf`
- UNICEF design-system guidelines: `https://unicef.github.io/design-system/design-guidelines.html`

## What This Is

`DESIGN.md` is a structured, agent-readable design system document. This draft translates UNICEF Brand Book 4.0 into that format so coding agents can generate interfaces and communication assets that stay closer to UNICEF's visual identity.

In addition to the brand book, this repository also references the UNICEF design-system guidelines for productivity and enterprise web applications:

- `https://unicef.github.io/design-system/design-guidelines.html`

Those guidelines are especially useful for refining the app-oriented and Quarto-oriented variants with stronger rules for labeling, forms, tables, alerts, accessibility, and action-color semantics.

## How To Use

If you want to apply this UNICEF design system in another project, you usually only need to copy one of the root `DESIGN*.md` files into that project's root directory.

Choose one:

- `DESIGN.md`: best default choice for general UNICEF-aligned work
- `DESIGN.web-app.md`: use for product UI, app shells, forms, and dashboard-style work
- `DESIGN.quarto.md`: use for Quarto sites, reports, listings, and publication-style pages

Typical workflow in another project:

1. Copy the variant you want into your target project.
2. Rename it to `DESIGN.md` in that project root.
3. Ask your coding agent to use `DESIGN.md` when generating or restyling UI.

You usually do **not** need to copy this repository's `site/` directory unless you specifically want the Quarto example implementation.

Example prompts for another project:

```text
Use the DESIGN.md in this repo as the visual source of truth and restyle the homepage to match UNICEF's editorial, child-centered design language.
```

```text
Build a reporting dashboard that follows the local DESIGN.md. Keep UNICEF Blue as the primary brand signal, use restrained accents, and favor clear data panels over decorative UI.
```

```text
Create a Quarto landing page and article template based on DESIGN.md. Preserve strong reading rhythm, generous spacing, calm typography, and publication-style hierarchy.
```

```text
Refactor the existing components to align with DESIGN.md without changing the underlying app behavior. Focus on typography, spacing, color roles, cards, navigation, and content density.
```

If you want more background on the format itself, see the Stitch overview:

- `https://stitch.withgoogle.com/docs/design-md/overview/`

## Local Dependencies

For local work, there are two dependency paths:

- **Required for the Quarto site**: `quarto`
- **Recommended for pinned lint/tooling**: `node` plus `pnpm`

Recommended setup:

```bash
pnpm install
```

This installs pinned versions of:

- `@google/design.md` for linting `DESIGN*.md`
- `playwright` for optional local screenshot tooling

If you do not want to install Node dependencies locally, the Makefile still falls back to `npx @google/design.md` for design-doc linting.

To verify your environment:

```bash
quarto --version
pnpm --version
node --version
```

## What Was Mapped Directly

The following parts of the file come directly from the PDF guidance:

- Core brand philosophy, tone, and personality
- Main color palette and accent colors
- Primary typography choices: `Noto Sans` and `Aleo`
- Brand statement rules for `for every child,`
- Logo usage hierarchy and placement principles
- Imagery and photography guidance
- Accessibility, localization, web, social, video, and partnership guidance

## What Was Inferred

The UNICEF brand book is not a full product UI token system, so some parts of the `DESIGN.md` were inferred to make it more useful in software and interface generation:

- A practical typography scale for display, headline, body, label, and video text
- A spacing scale for digital layout work
- Minimal corner-radius tokens
- A small set of generic component tokens such as buttons, cards, inputs, and stat blocks

These inferred tokens are intended to feel faithful to the PDF rather than to claim official UNICEF implementation details.

## Important Limits

- This is a draft interpretation, not an official UNICEF design system release.
- The source PDF remains the authoritative reference for trademark, logo, legal, and partnership rules.
- If a generated UI conflicts with the PDF, prefer the PDF.
- Digital product patterns not covered in the PDF should be reviewed manually.

## File Layout

- `DESIGN.md`: The draft design system document
- `DESIGN.web-app.md`: Variant optimized for websites and application UI
- `DESIGN.quarto.md`: Variant optimized for Quarto sites, reports, and documentation
- `site/_quarto.yml`: Quarto website starter configuration
- `site/_brand-light.yml` and `site/_brand-dark.yml`: Paired brand files for light and dark mode
- `site/custom.scss` and `site/custom-dark.scss`: Paired Quarto theme overrides
- `site/posts/`: Blog-style Quarto post directory with shared metadata
- `site/README.md`: Contributor notes for the Quarto site
- `.github/workflows/publish.yml`: GitHub Pages deployment workflow
- `files/Brand Book 4.0.pdf`: The source brand book used for the draft

## Quarto Starter

The repository now also includes a working Quarto starter aligned to the Quarto-specific design variant.

- The entire runnable Quarto site now lives under `site/`
- `site/stories.qmd` auto-lists the `site/posts/` directory using Quarto listings
- `site/posts/_metadata.yml` applies shared post options including `freeze: auto`
- `site/404.qmd` provides a branded not-found page
- `site/_brand-light.yml` and `site/_brand-dark.yml` power Quarto brand-aware light and dark mode
- `site/custom.scss` and `site/custom-dark.scss` layer additional visual styling on top of Quarto themes
- `.github/workflows/publish.yml` renders `site/` and deploys `site/_site/` to GitHub Pages via Actions
- `.agents/skills/playwright/SKILL.md` provides a short repo-specific guide for using `playwright-cli` to inspect rendered pages and capture screenshots

Run locally with:

```bash
quarto preview site
```

## GitHub Pages Setup

Before publishing the Quarto site publicly, set the final `website.site-url` in `site/_quarto.yml`.

Typical values:

- Project site: `https://<username>.github.io/<repo>/`
- User or organization site: `https://<username>.github.io/`

Example:

```yaml
website:
  title: UNICEF
  site-url: https://your-user.github.io/your-repo/
```

After that, GitHub Pages setup is:

1. Push the repository to GitHub.
2. In the repository settings, open **Pages**.
3. Set the Pages source to **GitHub Actions**.
4. Push to `main` or run the `Deploy Quarto Site` workflow manually.
5. Wait for the workflow to finish and confirm the published URL in the Pages settings.

Notes:

- The deployment workflow is `.github/workflows/publish.yml`.
- The workflow renders `site/` and publishes `site/_site/`.
- If you use a custom domain later, add a `CNAME` file inside `site/` so Quarto copies it into the published output.

## Variants

Three variants are now available:

- `DESIGN.md`: The general-purpose brand interpretation closest to the source PDF
- `DESIGN.web-app.md`: A more operational variant for product UI, dashboards, forms, and responsive app shells
- `DESIGN.quarto.md`: A publishing-oriented variant for Quarto websites, reports, sidebars, TOCs, listings, code blocks, and callouts

If you want one of these to drive generation, either copy it to `DESIGN.md` in the target project or point your agent to the specific file.

## Validation

You can validate the file with the Google linter:

```bash
pnpm run lint:design

# or without installing dependencies first
npx @google/design.md lint DESIGN.md
npx @google/design.md lint DESIGN.web-app.md
npx @google/design.md lint DESIGN.quarto.md
```

## Drafting Notes

The draft keeps the canonical `DESIGN.md` sections in spec order:

1. `Overview`
2. `Colors`
3. `Typography`
4. `Layout`
5. `Elevation & Depth`
6. `Shapes`
7. `Components`
8. `Do's and Don'ts`

After those, it adds UNICEF-specific guidance sections such as `Logo`, `Imagery`, `Data Visualization`, `Accessibility`, `Localization`, `Partnerships`, and channel guidance. The Google spec allows extra sections as long as the canonical sections stay ordered.
