# Site Contributor Guide

This directory contains the runnable Quarto website starter that accompanies the root `DESIGN.quarto.md` draft.

## Quick Start

From the repository root:

```bash
pnpm install
make preview
```

Or run Quarto directly:

```bash
quarto preview site
```

To produce a static build:

```bash
make render
```

To run the root design-doc lints and a full site render together:

```bash
make check
```

## Required Tools

For local site work you should have:

- `quarto`
- `node`
- `pnpm`

Install pinned JavaScript tooling from the repository root with:

```bash
pnpm install
```

That installs:

- `@google/design.md` for design-doc linting
- `playwright` for optional local screenshot tooling

If you only need the site preview and do not plan to run the design linter locally, you can skip `pnpm install` and just use Quarto.

## Structure

- `_quarto.yml`: Site configuration
- `_brand-light.yml` and `_brand-dark.yml`: Light and dark brand definitions
- `custom.scss` and `custom-dark.scss`: Theme overrides layered on top of Quarto themes
- `_brand/`: Placeholder logo assets for local demos
- `posts/`: Blog-style content directories
- `stories.qmd`: Listing page that auto-discovers posts
- `404.qmd`: Custom not-found page

## Adding a New Post

Create a new directory under `posts/` and add an `index.qmd` file inside it.

Example:

```text
posts/my-new-post/index.qmd
```

Each post should have at least:

- `title`
- `description`
- `date`
- `categories`
- `image` and `image-alt` when possible

Because `stories.qmd` lists `posts/` automatically, a new rendered post will appear on the listing page without any manual updates.

## Shared Post Defaults

`posts/_metadata.yml` applies shared defaults to all posts, including:

- `toc: true`
- `page-navigation: true`
- `freeze: auto`

`freeze: auto` is useful for content with executable code because Quarto can reuse saved computation output instead of rerunning every post on every render.

## Brand Assets

The active site now uses approved English logo PNGs copied from the repository `files/` directory into `site/_brand/`.

- Light mode uses the cyan horizontal logo in the navbar.
- Dark mode uses the white horizontal logo in the navbar.
- Both modes use the centered container logo for the larger sidebar/logo slot.

Placeholder SVG files remain in `_brand/` only as fallback demo assets.

## Deployment

GitHub Pages deployment is handled by `.github/workflows/publish.yml` at the repository root.

- It renders `site/`
- It uploads `site/_site/`
- It deploys via GitHub Pages Actions

Before publishing publicly, set the final `website.site-url` in `site/_quarto.yml`.

Typical values:

- Project site: `https://<username>.github.io/<repo>/`
- User or organization site: `https://<username>.github.io/`

Then:

1. Push the repository to GitHub.
2. In repository settings, open **Pages**.
3. Set **Source** to **GitHub Actions**.
4. Push to `main` or run the deployment workflow manually.

If you later use a custom domain, add a `CNAME` file inside `site/` so Quarto copies it into the published output.

## Screenshot Baselines

A lightweight screenshot capture workflow is available at `.github/workflows/screenshots.yml`.

- It renders `site/`
- starts a local HTTP server in CI
- captures key Quarto pages in light mode and a dark-mode stories page
- uploads the screenshots as a workflow artifact
