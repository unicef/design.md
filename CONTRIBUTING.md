# Contributing

This repository has two distinct contribution paths:

1. **Design-doc work**: the root-level `DESIGN*.md` files and supporting documentation
2. **Site work**: the runnable Quarto example site in `site/`

Keeping those paths separate makes the repo easier to review and maintain.

## Repository Areas

### Design-doc work

Files at the repository root define the design-system drafts derived from the UNICEF brand book.

- `DESIGN.md`
- `DESIGN.web-app.md`
- `DESIGN.quarto.md`
- `README.md`

This work is about:

- translating brand guidance into the Google `DESIGN.md` format
- improving token structure, prose guidance, and section clarity
- refining specialized variants for app and Quarto use cases

This work is **not** about changing the Quarto example site's implementation details unless the change is needed to keep the example aligned with the design docs.

### Site work

The `site/` directory contains a runnable Quarto example that demonstrates how the Quarto-oriented design variant might be implemented.

Key files:

- `site/_quarto.yml`
- `site/_brand-light.yml`
- `site/_brand-dark.yml`
- `site/custom.scss`
- `site/custom-dark.scss`
- `site/posts/`
- `site/stories.qmd`
- `site/404.qmd`

This work is about:

- Quarto configuration
- content structure and listings
- brand and theme layering
- sample posts, figures, and publishing patterns
- GitHub Pages deployment wiring

This work is **not** the authoritative source of brand rules. The design docs and the source PDF remain the reference for brand interpretation.

## How To Contribute

### If you are changing design docs

Work at the repository root.

Typical tasks:

- tighten YAML tokens
- improve prose guidance
- add or refine variants
- document what is inferred versus sourced

Validate changes with:

```bash
pnpm install
pnpm run lint:design

# or zero-install fallback
npx @google/design.md lint DESIGN.md
npx @google/design.md lint DESIGN.web-app.md
npx @google/design.md lint DESIGN.quarto.md
```

### If you are changing the Quarto site

Work in `site/`.

Typical tasks:

- add or revise posts
- update themes or brand files
- adjust navigation, listings, and page structure
- improve deployment or local developer workflow

Run locally with:

```bash
pnpm install
make preview
```

Render a full build with:

```bash
make render
```

## When A Change Touches Both

Some contributions legitimately span both areas. Examples:

- updating `DESIGN.quarto.md` and then adjusting `site/` so the example still matches it
- changing color/token guidance and then updating theme files accordingly

In those cases:

- keep the design-doc change and the site change clearly related
- explain the linkage in your commit or PR description
- avoid incidental cleanup in unrelated files

## Content And Asset Rules

- Treat `files/Brand Book 4.0.pdf` as source material, not an editable working file.
- Do not add official UNICEF logo assets unless you have the right approval to do so.
- The placeholder files in `site/_brand/` are for demos only and should remain clearly marked as placeholders.
- Prefer real, clearly labeled sample figures over ambiguous mock assets.

## Review Checklist

Before submitting a contribution:

- confirm whether the change is design-doc work, site work, or both
- validate any modified `DESIGN*.md` files with the Google linter
- render the Quarto site if anything under `site/` changed
- make sure new links and listings resolve correctly
- keep root-level design artifacts and the Quarto example site conceptually separate

## Project Conventions

- Root-level design artifacts explain the intended system.
- `site/` demonstrates one implementation of the Quarto-oriented variant.
- When design intent and implementation diverge, update whichever layer is actually wrong rather than forcing them to drift together silently.
