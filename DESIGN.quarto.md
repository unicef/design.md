---
version: alpha
name: UNICEF Brand Book 4.0 - Quarto Websites
description: A UNICEF design system variant optimized for Quarto-powered reports, documentation sites, storytelling websites, and publication-style content.
colors:
  primary: "#00AEEF"
  link: "#0047BB"
  secondary: "#FFFFFF"
  tertiary: "#000000"
  neutral: "#D7D2CB"
  surface: "#FFFFFF"
  surface-subtle: "#B3E7FA"
  surface-muted: "#D7D2CB"
  border: "#BEBAB6"
  ink: "#000000"
  ink-muted: "#6E6968"
  accent-teal: "#004C45"
  accent-orange: "#FF8200"
  accent-gold: "#FFB500"
  danger: "#E2231A"
  on-primary: "#000000"
  on-link: "#FFFFFF"
  on-tertiary: "#FFFFFF"
  on-danger: "#FFFFFF"
typography:
  display-lg:
    fontFamily: Noto Sans
    fontSize: 56px
    fontWeight: 300
    lineHeight: 1.05
    letterSpacing: -0.03em
  article-title:
    fontFamily: Noto Sans
    fontSize: 48px
    fontWeight: 300
    lineHeight: 1.1
    letterSpacing: -0.02em
  section-title:
    fontFamily: Noto Sans
    fontSize: 32px
    fontWeight: 400
    lineHeight: 1.2
    letterSpacing: -0.02em
  body-lg:
    fontFamily: Noto Sans
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.75
  body-md:
    fontFamily: Noto Sans
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.7
  body-sm:
    fontFamily: Noto Sans
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.6
  nav-sm:
    fontFamily: Noto Sans
    fontSize: 14px
    fontWeight: 700
    lineHeight: 1.2
  caption-sm:
    fontFamily: Noto Sans
    fontSize: 13px
    fontWeight: 400
    lineHeight: 1.5
  label-sm:
    fontFamily: Noto Sans
    fontSize: 12px
    fontWeight: 700
    lineHeight: 1.2
    letterSpacing: 0.02em
  code-sm:
    fontFamily: Noto Sans
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.5
  quote-serif:
    fontFamily: Aleo
    fontSize: 24px
    fontWeight: 700
    lineHeight: 1.4
rounded:
  none: 0px
  sm: 4px
  md: 8px
  full: 9999px
spacing:
  xs: 4px
  sm: 8px
  md: 12px
  lg: 16px
  xl: 24px
  2xl: 32px
  3xl: 48px
  4xl: 64px
  content-max: 760px
  wide-max: 1200px
  sidebar-width: 280px
  toc-width: 240px
components:
  navbar:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.nav-sm}"
    height: 64px
    width: 100%
  sidebar:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    width: "{spacing.sidebar-width}"
    padding: "{spacing.xl}"
  toc-panel:
    backgroundColor: "{colors.surface-subtle}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    width: "{spacing.toc-width}"
    padding: "{spacing.lg}"
  button-primary:
    backgroundColor: "{colors.link}"
    textColor: "{colors.on-link}"
    typography: "{typography.nav-sm}"
    rounded: "{rounded.sm}"
    padding: "{spacing.lg}"
  button-secondary:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.nav-sm}"
    rounded: "{rounded.sm}"
    padding: "{spacing.lg}"
  article-card:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: "{spacing.xl}"
  listing-card:
    backgroundColor: "{colors.surface-subtle}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: "{spacing.xl}"
  callout-note:
    backgroundColor: "{colors.neutral}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: "{spacing.xl}"
  callout-important:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: "{spacing.xl}"
  callout-success:
    backgroundColor: "{colors.accent-teal}"
    textColor: "{colors.on-tertiary}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: "{spacing.xl}"
  callout-tip:
    backgroundColor: "{colors.accent-teal}"
    textColor: "{colors.on-tertiary}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: "{spacing.xl}"
  callout-warning:
    backgroundColor: "{colors.accent-gold}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: "{spacing.xl}"
  callout-caution:
    backgroundColor: "{colors.accent-orange}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: "{spacing.xl}"
  callout-attention:
    backgroundColor: "{colors.accent-orange}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: "{spacing.xl}"
  callout-danger:
    backgroundColor: "{colors.danger}"
    textColor: "{colors.on-danger}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: "{spacing.xl}"
  code-block:
    backgroundColor: "{colors.surface-muted}"
    textColor: "{colors.ink}"
    typography: "{typography.code-sm}"
    rounded: "{rounded.sm}"
    padding: "{spacing.xl}"
  table-header:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.label-sm}"
    rounded: "{rounded.none}"
    padding: "{spacing.md}"
  search-panel:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.md}"
    padding: "{spacing.lg}"
  border-rule:
    backgroundColor: "{colors.border}"
    textColor: "{colors.ink}"
    typography: "{typography.caption-sm}"
    rounded: "{rounded.none}"
    padding: "{spacing.xs}"
  meta-muted:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink-muted}"
    typography: "{typography.caption-sm}"
    rounded: "{rounded.none}"
    padding: "{spacing.sm}"
  panel-inverse:
    backgroundColor: "{colors.tertiary}"
    textColor: "{colors.on-tertiary}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.none}"
    padding: "{spacing.lg}"
  quote-panel:
    backgroundColor: "{colors.secondary}"
    textColor: "{colors.ink}"
    typography: "{typography.quote-serif}"
    rounded: "{rounded.none}"
    padding: "{spacing.2xl}"
  footer-default:
    backgroundColor: "{colors.surface-muted}"
    textColor: "{colors.ink}"
    typography: "{typography.caption-sm}"
    rounded: "{rounded.none}"
    padding: "{spacing.xl}"
  breadcrumbs:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.link}"
    typography: "{typography.caption-sm}"
    rounded: "{rounded.none}"
    padding: "{spacing.sm}"
  page-navigation:
    backgroundColor: "{colors.surface-subtle}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.sm}"
    padding: "{spacing.lg}"
  toc-active:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.link}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.none}"
    padding: "{spacing.sm}"
  repo-actions:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.link}"
    typography: "{typography.caption-sm}"
    rounded: "{rounded.none}"
    padding: "{spacing.sm}"
---

# UNICEF Quarto Websites

## Overview

This variant adapts the UNICEF identity for Quarto websites: reports, documentation portals, narrative storytelling sites, research publications, campaign explainers, and article collections. It prioritizes reading rhythm, clear navigation, searchable structure, code or data embeds when needed, and editorial dignity.

The site should feel like UNICEF publishing on the web, not a generic docs theme painted cyan. That means clean structure, strong headline-to-body hierarchy, real respect for photography, careful use of callouts, and readable long-form pages.

Use UNICEF Blue as a guiding field color, but let content remain the hero. Quarto sites should read as trustworthy public-interest publishing systems.

## Colors

The Quarto variant uses a publication-first palette.

- **Primary (`#00AEEF`)**: Brand bars, section headers, key callouts, and recognizably UNICEF surfaces.
- **Link (`#0047BB`)**: Stronger interactive blue for links and buttons where contrast matters.
- **Secondary (`#FFFFFF`)**: The main page surface.
- **Tertiary (`#000000`)**: Primary text and inverse footer or utility zones.
- **Neutral (`#D7D2CB`)**: Quiet separators and editorial support fields.

Accent colors should support meaning.

- **Teal** for positive notes or data-supportive content.
- **Orange** and **gold** for emphasis, warnings, or highlight blocks.
- **Danger red** for critical notices only.

Keep pages clean and readable. Avoid multicolor clutter in article flows. Headings should generally remain dark rather than bright cyan so they are not confused with links, while the darker blue stays reserved for real interaction and navigation emphasis.

## Typography

Typography should support sustained reading, scanning, and multilingual publishing.

- Article titles use light Noto Sans with large, calm scale.
- Section headings use regular Noto Sans with precise spacing.
- Body copy should be slightly looser than app UI to support long-form reading.
- Captions, metadata, figure notes, and navigation labels should stay restrained and clear.
- Code and technical blocks should remain simple and readable.
- Aleo is best reserved for pull quotes, story moments, or editorial emphasis.

The system should feel like a serious global publication, not a tech blog or startup landing page.

## Layout

Quarto sites should support two main layout modes.

- **Reading mode**: A narrow content column for articles, reports, and essays.
- **Wide mode**: A broader layout for listings, dashboards, tables, maps, or data-rich sections.

Side navigation, table of contents, search, and section lists should be easy to scan without overwhelming the reading experience. Keep margins generous and let vertical rhythm do most of the work.

## Elevation & Depth

Depth should remain minimal.

- Use background shifts and spacing before shadows.
- Let callouts and cards be differentiated by color or edge clarity.
- Avoid heavy floating panels that distract from the page narrative.

## Shapes

The Quarto variant keeps the brand mostly square.

- Cards, callouts, and code blocks can have a very small radius.
- Tables, figure frames, and side panels should stay disciplined and rectilinear.
- Rounded pills should not become a dominant motif.

## Components

This variant optimizes for publishing and information architecture.

- Navbars should be prominent and stable.
- Sidebars and TOCs should support scanning rather than stealing focus.
- Callouts should be useful editorial devices, not decorative boxes.
- Article cards and listing cards should preview content cleanly.
- Code blocks, tables, footnotes, and metadata should feel integrated into the same identity.
- Search surfaces should be calm and readable.

## Do's and Don'ts

- Do make reading easy over long sessions.
- Do keep content width controlled and margins generous.
- Do use photography purposefully in hero moments and feature pages.
- Do make tables, callouts, and charts feel like part of the same editorial system.
- Do preserve strong color contrast for links and callouts.
- Do write links and labels so users can understand them while scanning.
- Don't style Quarto pages like a SaaS dashboard unless the content truly requires it.
- Don't overload article pages with multiple accent colors or too many inline panels.
- Don't let sidebars and TOCs dominate the reading column.
- Don't use decorative type, ornamental shapes, or glossy effects.

## Navigation

Quarto navigation should feel structured and public-service oriented.

- Use a clear top navbar for global site identity and major sections.
- Use sidebars for report chapters, docs navigation, or section navigation.
- Use a right-side TOC when pages are long enough to benefit from it.
- Keep active states obvious with blue highlights or clear weight changes.
- Search should be available without becoming the main visual feature.

Quarto supports three patterns that map well to UNICEF work:

- **Top navigation** for broad campaign or institutional sites.
- **Side navigation** for reports, documentation, and policy collections.
- **Hybrid navigation** for larger sites where top-level sections each own their own sidebar.

Prefer `docked` sidebars for documentation, multi-chapter reports, and section-heavy reference sites. Prefer `floating` sidebars or no sidebar at all for essay-like storytelling pages where reading rhythm matters more than hierarchy density.

Search should be enabled in the navbar or sidebar, but not duplicated in both places on the same layout.

## Quarto Configuration

This variant should assume real Quarto website mechanics rather than abstract content-site ideas.

- Drive site structure from `_quarto.yml`.
- Use `website.navbar` for top navigation, with a blue brand bar when the site benefits from strong institutional framing.
- Use `website.sidebar` for hierarchical content and multi-level report navigation.
- Use `contents: auto` or section-level auto-generation when the filesystem structure already reflects the information architecture.
- Use `title`, `logo`, and `logo-alt` cleanly so the UNICEF identity remains accessible and consistent.
- For large public sites, consider `repo-url` and `repo-actions` such as `edit`, `source`, and `issue` when editorial transparency is useful.

## Reader Experience

Quarto includes several built-in features that should inform the design language of UNICEF publishing sites.

- **Reader mode** is useful on article-heavy sites where users may want to hide the sidebar and TOC.
- **Page navigation** is useful for sequential reading in chaptered reports or guidance series.
- **Back to top navigation** is appropriate for long technical or policy pages.
- **Breadcrumbs** should remain visible for nested documentation and report hierarchies unless a landing page is intentionally immersive.

Use these features in service of clarity, not chrome accumulation.

## Articles and Listings

Articles should open with strong titles, concise dek copy, and enough breathing room for the first paragraph to settle in. Listing pages should feel like editorial indexes rather than product grids.

- Use cards or simple row listings with strong title hierarchy.
- Let dates, authorship, and taxonomy sit quietly.
- Use hero images sparingly but with conviction.
- Preserve legibility when article cards include photography.

## Writing for the Web

Quarto pages should follow on-screen writing rules rather than print-document habits.

- Use short paragraphs, ideally no more than a few lines on screen.
- Start with the conclusion or most important point when possible.
- Prefer bullet lists and numbered lists over comma-heavy prose.
- Use bold sparingly to highlight key phrases.
- Use headings to structure content so readers can scan quickly.
- Avoid underlining non-link text.

## Links & Labels

Link and navigation text should describe what is behind the interaction.

- Avoid `click here` style link text.
- Prefer labels that describe the destination or action directly.
- Keep labels in sentence case.
- Avoid unexplained acronyms in navigation and UI labels.

## Code, Tables, and Callouts

Quarto websites often include analytical or technical content. Even when the tone is editorial, structured content should feel fully supported.

- Code blocks should be quiet, readable, and not overly dark.
- Tables should use strong headers and restrained striping or tinting.
- Callouts should indicate meaning clearly: note, tip, caution, warning, important, and danger.
- Use callouts to clarify, not to interrupt every section.

In publishing contexts, alerts and callouts should be used only for genuinely high-importance content. Normal explanatory text should remain in the main article flow rather than being boxed by default.

Quarto's built-in callout system maps cleanly to UNICEF content if used with discipline:

- **Note**: neutral informational emphasis
- **Tip**: positive action or implementation guidance
- **Caution**: practical care point or process warning
- **Warning**: stronger disruption or risk alert
- **Important**: mission-critical institutional guidance
- **Danger**: emergency or severe risk

Code copy buttons, code annotations, and figure/table cross-references should feel integrated into the same restrained editorial system.

Numeric and date columns in tables should align consistently, with right alignment used where it improves comparison.

## Data Visualization

Use the UNICEF chart language in a web-publishing context.

- Blue remains the primary data color.
- Teal, orange, and gold can distinguish additional series.
- Keep labels, captions, and chart notes plain and direct.
- Treat maps, charts, and figures as editorial evidence.

Status-like colors in explanatory graphics should stay semantic: teal for success, orange or gold for warning, and red for severe error or danger.

## Dates & Numbers

Publishing and reporting pages should use unambiguous date formats.

- Prefer `3 February 2026` or `03-Feb-2026`.
- Avoid ambiguous numeric dates like `03/08/2026`.
- Keep number and currency formatting consistent across a site or publication series.

## Accessibility

Quarto sites should be accessible by default.

- Maintain readable line lengths and line heights.
- Use accessible link contrast and obvious visited or active states if supported.
- Ensure callouts and tables remain readable on small screens.
- Do not depend on color alone for structure or warning states.
- Support keyboard navigation and clear heading hierarchy.
- Provide concise and descriptive `alt` text for meaningful images and figures.

If dark mode is offered, treat it as a second fully designed experience rather than a token inversion. Quarto supports paired light and dark themes, but UNICEF publishing should remain light-first unless there is a strong product reason to offer both.

## Theming

Quarto HTML output is Bootstrap 5-based, so this variant should translate naturally into theme variables, custom SCSS, and HTML theme overrides.

- Keep the default appearance light-first.
- Use theme variables for navbar, sidebar, footer, TOC, link, and callout colors.
- Keep code blocks lightly tinted rather than dark-terminal styled unless the site itself is technical documentation that genuinely benefits from darker code surfaces.
- Preserve a clear distinction between content width for reading pages and wider layouts for listings, dashboards, or figure-heavy pages.

This variant is a better fit for `theme` plus custom SCSS than for heavily bespoke CSS that fights Quarto's layout model.

## Icons

Icons should generally support visible labels rather than replace them.

- In navigation and utility controls, prefer icons plus text where space allows.
- Use icon-only controls only for very familiar actions or very constrained spaces.
- Tooltips can support icon-only controls, but should not be the primary carrier of meaning.

## Deployment Details

Quarto websites often ship to GitHub Pages, Netlify, Posit Connect, or similar static hosting environments.

- Always fully render before deployment, even if preview looked correct locally.
- Use `site-url` or `site-path` correctly for non-root deployments.
- Provide a branded `404.qmd` page for public sites.
- Use redirects when pages move so research and report links remain stable.

## Localization

Quarto sites should support multilingual publishing and translation workflows.

- Keep layouts resilient to longer translated headings.
- Rely on Noto Sans as the default multilingual backbone.
- Avoid brittle spacing that only works with short English labels.
- Preserve right-to-left readiness where relevant.

## Imagery

Imagery should follow the same UNICEF standards as the broader brand system.

- Use child-centered, respectful photography.
- Let images support reporting, storytelling, and advocacy.
- Do not use imagery as filler in content-dense report pages.
- When pages are analytical, use imagery sparingly and with clear editorial intent.
