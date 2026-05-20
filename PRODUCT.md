# Product

## Register

brand

## Users

The primary users are AI coding and design agents that need a reliable, reusable source of UNICEF-aligned design guidance. Secondary users are design engineers and documentation maintainers who adapt the design docs, Quarto starter, and supporting assets into other projects.

Users typically arrive with one of three jobs:

- Copy a `DESIGN*.md` variant into another project and ask an agent to generate UNICEF-aligned UI.
- Inspect the Quarto example site to see how the Quarto-oriented design variant can be implemented.
- Maintain or extend the design documentation while preserving fidelity to the UNICEF Brand Book 4.0 and UNICEF UX/UI design guidelines.

## Product Purpose

This repository turns UNICEF Brand Book 4.0 into agent-readable design-system documentation and a working Quarto example site.

Success means:

- agents can consume a single `DESIGN.md` file and produce work that feels recognizably UNICEF
- project teams can choose the right variant for general brand work, app/product UI, or Quarto publishing
- the Quarto example demonstrates the design guidance without becoming the source of truth itself
- contributors can validate, preview, and publish changes with clear commands

The design docs are the product. The Quarto site is a demonstration and testbed for the Quarto-focused variant.

## Brand Personality

The brand personality is hopeful, direct, and credible.

The experience should feel child-centered, public-interest oriented, globally legible, and operationally serious. It should communicate trust and dignity without sliding into corporate genericism, charity melodrama, or decorative campaign gloss.

The repo should feel like a careful translation layer between official UNICEF brand guidance and practical AI-agent implementation.

## Anti-references

Avoid:

- generic AI-generated landing pages with indistinct card grids and soft SaaS gradients
- decorative overuse of UNICEF Blue or secondary colors without semantic purpose
- dashboard aesthetics that feel investor-focused, sales-led, or gamified
- content that treats children as emotional props rather than dignified subjects
- unofficial logo manipulation, recoloring, distortion, or custom sub-branding
- vague labels, unexplained acronyms, "click here" links, and UI copy that is clever instead of clear
- Quarto examples that fight Quarto's native publishing model with excessive custom layout code

## Design Principles

1. **Design docs are the source of truth.** The root `DESIGN*.md` files should remain reusable artifacts that other projects can copy and apply.

2. **Implementation demonstrates, but does not redefine.** The Quarto site should show one practical application of `DESIGN.quarto.md`, not invent a competing visual language.

3. **Brand presence should be clear but humble.** UNICEF Blue, logo usage, typography, imagery, and copy should feel recognizable without overwhelming the user or content.

4. **Semantic clarity beats decoration.** Supporting colors, callouts, alerts, links, tables, and labels should communicate meaning, not visual variety for its own sake.

5. **Reusable guidance comes first.** When choosing between a narrow demo flourish and clearer cross-project guidance, prioritize the guidance agents can reuse elsewhere.

## Accessibility & Inclusion

Accessibility is a core requirement.

- Aim for WCAG AA contrast in generated interfaces and the Quarto example site.
- Do not rely on color alone to communicate status, warnings, or destructive actions.
- Use clear labels, descriptive links, and meaningful alt text.
- Keep layouts readable on small screens and resilient to translation.
- Respect low-bandwidth contexts by avoiding unnecessary media weight and decorative complexity.
- Preserve dignity and privacy in imagery, especially when children are represented.
