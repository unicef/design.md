# Design Roles And Source Policy

This file is the upstream semantic model for the root `DESIGN*.md` variants. It explains how source materials map into reusable roles before those roles are projected into individual `DESIGN.md` files.

## Source Matrix

| Topic | Governing source | Notes |
|---|---|---|
| Logo usage | `files/Brand Book 4.0.pdf` | Official logo assets, variant selection, clear space, and legal constraints govern all usage. |
| Core brand colors | `files/Brand Book 4.0.pdf` | UNICEF Blue, white, black, accents, and emergency red originate here. |
| Enterprise UI behavior | UNICEF UX/UI design guidelines | Governs forms, labels, tables, app status colors, actions, and low-bandwidth behavior. |
| Design-token structure | Google/Stitch `DESIGN.md` specification | Governs YAML token schema, section ordering, and lint behavior. |
| Quarto implementation | Quarto docs | Governs navbar, sidebar, listings, callouts, themes, site publishing, and project render behavior. |
| Accessibility | UNICEF brand guidance, UNICEF UX/UI guidance, WCAG | Accessibility wins when visual mimicry creates tension. |

## Conflict Policy

- Brand Book 4.0 governs identity, logo usage, photography, and core brand expression.
- UNICEF UX/UI design guidelines govern enterprise interaction patterns, labeling, forms, tables, status semantics, and app behavior.
- Accessibility, dignity, and legibility override visual mimicry when there is tension.
- Quarto documentation governs implementation primitives for the demonstration site.
- If a design doc is copied into another project, the copied file's `Usage Fit`, `Agent Priority Rules`, and semantic tokens should be treated as the local operating guidance.

## Canonical Semantic Roles

| Role | Value | Meaning |
|---|---|---|
| `brand-primary` | `#00AEEF` | UNICEF Blue. Use for brand chrome, headers, official emphasis, and identity reinforcement. |
| `action-primary` | `#0047BB` | Dark action blue. Use for primary actions, links, active controls, and high-contrast interaction. |
| `link` | `#0047BB` | Link color. Same value as `action-primary`, with a clearer text/navigation role. |
| `status-success` | `#004C45` | Success or positive completion. Pair with explicit text or icon cues. |
| `status-warning` | `#FFB500` | Warning, caution, or attention. Pair with explicit text or icon cues. |
| `status-danger` | `#E2231A` | Error, danger, emergency, or destructive action. Use sparingly. |
| `surface` | `#FFFFFF` | Default surface for readable content. |
| `text` | `#000000` | Primary text. |
| `border` | `#BEBAB6` | Structural border and quiet separation. |
| `data-series-primary` | `#00AEEF` | Primary data series and UNICEF data color. |
| `data-series-secondary` | `#0047BB` | Secondary data series. |
| `data-series-tertiary` | `#FFB500` | Tertiary data series. |

## Projection Rules

- `DESIGN.md` should stay brand/general, but must expose enough semantic roles to be safe when copied by itself.
- `DESIGN.web-app.md` should prioritize the enterprise UI interpretation of roles: dark blue actions, explicit labels, forms, tables, status semantics, and low-bandwidth behavior.
- `DESIGN.quarto.md` should prioritize publication roles: readable articles, listings, Quarto primitives, link clarity, semantic callouts, and restrained data visuals.
- The Quarto example in `site/` demonstrates the Quarto projection. It should consume the semantic decisions but should not redefine them.
