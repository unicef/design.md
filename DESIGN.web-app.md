---
version: alpha
name: UNICEF Brand Book 4.0 - Web/App
description: A UNICEF design system variant optimized for websites and applications while retaining the brand's clarity, dignity, and UNICEF Blue-led identity.
colors:
  primary: "#00AEEF"
  primary-deep: "#0047BB"
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
  accent-orange: "#FF7100"
  accent-gold: "#FFB500"
  danger: "#E2231A"
  on-primary: "#000000"
  on-primary-deep: "#FFFFFF"
  on-tertiary: "#FFFFFF"
  on-danger: "#FFFFFF"
typography:
  display-lg:
    fontFamily: Noto Sans
    fontSize: 56px
    fontWeight: 300
    lineHeight: 1.05
    letterSpacing: -0.03em
  headline-lg:
    fontFamily: Noto Sans
    fontSize: 40px
    fontWeight: 400
    lineHeight: 1.1
    letterSpacing: -0.02em
  headline-md:
    fontFamily: Noto Sans
    fontSize: 32px
    fontWeight: 400
    lineHeight: 1.15
    letterSpacing: -0.02em
  title-md:
    fontFamily: Noto Sans
    fontSize: 24px
    fontWeight: 400
    lineHeight: 1.25
  body-lg:
    fontFamily: Noto Sans
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.6
  body-md:
    fontFamily: Noto Sans
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.6
  body-sm:
    fontFamily: Noto Sans
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.5
  nav-md:
    fontFamily: Noto Sans
    fontSize: 15px
    fontWeight: 700
    lineHeight: 1.2
  label-sm:
    fontFamily: Noto Sans
    fontSize: 12px
    fontWeight: 700
    lineHeight: 1.2
    letterSpacing: 0.02em
  input-md:
    fontFamily: Noto Sans
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.4
  metric-lg:
    fontFamily: Noto Sans
    fontSize: 32px
    fontWeight: 700
    lineHeight: 1.1
  metric-sm:
    fontFamily: Noto Sans
    fontSize: 20px
    fontWeight: 700
    lineHeight: 1.2
  serif-emphasis:
    fontFamily: Aleo
    fontSize: 24px
    fontWeight: 700
    lineHeight: 1.3
rounded:
  none: 0px
  sm: 4px
  md: 8px
  lg: 12px
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
  sidebar: 280px
  content-max: 1280px
  form-max: 640px
components:
  topbar:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.nav-md}"
    height: 64px
    width: 100%
  sidebar-nav:
    backgroundColor: "{colors.tertiary}"
    textColor: "{colors.on-tertiary}"
    typography: "{typography.body-sm}"
    width: "{spacing.sidebar}"
    padding: "{spacing.xl}"
  button-primary:
    backgroundColor: "{colors.primary-deep}"
    textColor: "{colors.on-primary-deep}"
    typography: "{typography.nav-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.lg}"
  button-secondary:
    backgroundColor: "{colors.secondary}"
    textColor: "{colors.ink}"
    typography: "{typography.nav-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.lg}"
  button-info:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.nav-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.lg}"
  button-danger:
    backgroundColor: "{colors.danger}"
    textColor: "{colors.on-danger}"
    typography: "{typography.nav-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.lg}"
  input-default:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.input-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.lg}"
  card-default:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
  card-highlight:
    backgroundColor: "{colors.surface-muted}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
  panel-muted:
    backgroundColor: "{colors.neutral}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
  panel-border:
    backgroundColor: "{colors.border}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.sm}"
    padding: "{spacing.lg}"
  tab-active:
    backgroundColor: "{colors.surface-subtle}"
    textColor: "{colors.ink}"
    typography: "{typography.nav-md}"
    rounded: "{rounded.sm}"
    padding: "{spacing.md}"
  stat-primary:
    backgroundColor: "{colors.primary-deep}"
    textColor: "{colors.on-primary-deep}"
    typography: "{typography.metric-lg}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
  stat-secondary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.metric-sm}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
  toast-success:
    backgroundColor: "{colors.accent-teal}"
    textColor: "{colors.on-tertiary}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.md}"
    padding: "{spacing.lg}"
  alert-warning:
    backgroundColor: "{colors.accent-gold}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.md}"
    padding: "{spacing.lg}"
  alert-attention:
    backgroundColor: "{colors.accent-orange}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.md}"
    padding: "{spacing.lg}"
  meta-muted:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink-muted}"
    typography: "{typography.label-sm}"
    rounded: "{rounded.none}"
    padding: "{spacing.sm}"
---

# UNICEF Web/App

## Overview

This variant translates the UNICEF brand into a practical system for websites and applications. It keeps the core brand traits intact, but it is optimized for navigation-heavy products, forms, dashboards, reporting tools, campaign sites, and transactional journeys.

The interface should still feel unmistakably UNICEF: hopeful, direct, child-centered, and globally legible. The difference is operational. Compared with the base brand-book interpretation, this variant gives more weight to app shell structure, interaction states, repeated cards, form controls, data panels, and responsive behavior.

Use UNICEF Blue as the brand signal, but let the deep blue action color carry primary controls when readability matters. The overall effect should be clean and civic rather than glossy, startup-like, or aggressively consumerized.

## Colors

The digital stack uses two blue roles.

- **Primary (`#00AEEF`)**: Brand chrome, info surfaces, active indicators, hero panels, and background fields.
- **Primary Deep (`#0047BB`)**: Primary actionable controls, stronger link emphasis, and high-contrast call-to-action moments.
- **Secondary (`#FFFFFF`)**: Default canvas and card surface.
- **Tertiary (`#000000`)**: Core text, app-shell contrast, and high-clarity utility zones.
- **Neutral (`#D7D2CB`)**: Softer structural surfaces and section breaks.

Supporting colors are for status and segmentation, not for visual noise.

- **Teal (`#004C45`)**: Positive completion, stable success, and calm confirmations.
- **Orange (`#FF7100`)** and **gold (`#FFB500`)**: Human attention, notices, data highlighting, and campaign accents.
- **Danger (`#E2231A`)**: Emergencies, destructive actions, or urgent alerts.

The interface should never feel rainbow-coded. Blue remains the center of gravity. In enterprise and productivity applications, bright UNICEF Blue should mainly express institutional identity, while darker blue should carry the main action burden.

Status colors should follow a simple traffic-light model.

- Teal or green means success.
- Orange and gold mean warning or caution.
- Red means error, danger, or destructive action.
- Color must never be the only cue for status.

## Typography

Noto Sans remains the primary voice. In web and app contexts it should work harder as a system font for navigation, forms, metrics, metadata, and responsive layouts.

- Large marketing or dashboard headlines use light or regular Noto Sans.
- Body text, form text, tables, and data labels use regular Noto Sans.
- Navigation items, buttons, and compact labels use bold Noto Sans.
- Aleo is reserved for the occasional pull quote or campaign emphasis, not for interface scaffolding.

Headings should usually be rendered in dark ink rather than bright cyan so they do not compete with link styling. In low-bandwidth environments, efficient delivery or sensible `system-ui` fallback strategies are acceptable as long as the visual tone remains close to Noto Sans.

Use a strong typographic hierarchy with fewer decorative jumps. App screens should be scannable in under a second.

## Layout

Layout should support both marketing-style hero pages and application-style multi-panel screens.

- Desktop app shells can use a persistent top bar and optional left sidebar.
- Dense dashboards should still breathe through clear panel spacing and strong grouping.
- Forms should stay narrow enough to reduce cognitive load.
- Mobile layouts should collapse to a single column with obvious section boundaries.

The tone is ordered and friction-light, not playful. Avoid decorative card mosaics or excessive nested containers.

## Elevation & Depth

Depth remains restrained. Use whitespace, border contrast, and subtle surface shifts before using shadows.

- Cards may use a very soft separation if necessary for usability.
- App shells can use color-blocking for hierarchy.
- Avoid glassmorphism, heavy blur, and dramatic floating layers.

## Shapes

Web/app UI may soften the brand slightly, but only slightly.

- Buttons, inputs, and cards can use 4px to 8px radii.
- Navigation bars, panels, and tables should still read as precise and orderly.
- Preserve a mostly rectangular visual language.

## Components

This variant is intentionally more component-rich than the base file.

- Primary buttons should be high-contrast and unmistakable.
- Secondary buttons should be quiet and utility-focused.
- Cards should feel editorial and flat, not playful.
- Tabs, filters, alerts, and toasts should be obvious at a glance.
- Tables and stat panels should feel analytical and public-interest oriented rather than sales-dashboard driven.
- Forms should be simple, readable, and globally translatable.
- Icons should usually be paired with visible labels rather than standing alone.

## Do's and Don'ts

- Do use UNICEF Blue for brand recognition across navigation and hero surfaces.
- Do use deep blue for primary actions when contrast is critical.
- Do design dashboards and forms with strong grouping and low clutter.
- Do keep content and imagery respectful, concise, and credible.
- Do let metrics and status blocks feel factual instead of gamified.
- Do keep labels consistent across the whole product.
- Do prefer explicit button verbs over generic action text.
- Don't introduce playful consumer-app gradients, glass effects, or mascot styling.
- Don't crowd screens with too many cards, panels, or parallel actions.
- Don't hide the brand under monochrome utility styling.
- Don't use more accent colors than the information architecture genuinely needs.
- Don't use disabled buttons as the main way to explain missing form state.
- Don't use bright cyan headings in ways that can be confused with links.

## Content & Labeling

UNICEF enterprise UI should be explicit, obvious, and easy to understand regardless of the user's technical confidence.

- Use sentence case for labels, headings, and button text.
- Keep labels short, precise, and consistent.
- Avoid unnecessary acronyms. If an acronym is necessary, expand it the first time.
- Prefer `Continue`, `Save`, `Delete`, `Upload`, and `Download` over vague alternatives when those labels describe the action more precisely.
- Buttons perform actions, so button labels should contain verbs.
- Avoid filler link text such as `click here`; links should describe the destination or action.
- Use short paragraphs, bullets, and clear headings because users scan enterprise screens rather than read them linearly.

## Navigation

Navigation should be calm, prominent, and easy to scan.

- The top bar is a strong place for UNICEF Blue.
- Sidebars can use black or dark inverse treatment for deep app areas.
- Active states should use blue fills, blue rules, or high-contrast text changes rather than animated flourishes.
- Search, global actions, and profile/help affordances should stay structurally consistent across screens.

Icons in navigation should usually be accompanied by labels. If space is truly constrained, use a tooltip as a fallback rather than relying on unlabeled icons by default.

## Buttons

Use a small, consistent button vocabulary.

- Primary buttons move the user forward in the normal flow.
- Secondary buttons support less important actions such as cancel or going back.
- Danger buttons are reserved for destructive actions such as delete.
- Button order should move from lower-importance actions to the primary action.
- Prefer an undo path or a confirmation dialog for destructive actions.
- Avoid disabled buttons where possible; if an action is unavailable, explain why in surrounding text or field-level guidance.

## Forms

Forms should feel trustworthy and low-friction.

- Keep forms narrow where possible.
- Order fields from more important to less important, and place optional fields later.
- Group related fields together.
- Use clear labels above fields or in stable positions.
- Every form control should have a label except in rare obvious cases such as a standalone search box.
- Match field width to expected content length where practical.
- Right-align numerical and currency inputs to support scanning.
- Treat validation and error states as direct, not conversational.
- Destructive actions should be visually separate from primary completion actions.

## Tables

Tables should feel dense but readable.

- Put the most important identifying information toward the left.
- Keep actions at the far right.
- Right-align numerical and date columns.
- Use restrained row styling and let hierarchy come from alignment and typography rather than heavy decoration.

## Status & Alerts

Alerts and notifications should be rare and meaningful.

- Success should confirm completion without being celebratory.
- Warning should call for attention without blocking the user unnecessarily.
- Danger should indicate blockers, errors, or destructive actions.
- Pair status colors with clear text and, where helpful, icons.
- Avoid overusing alerts; if everything stands out, nothing stands out.

## Data Visualization

For apps and dashboards, data design should borrow from the UNICEF publication style but become more modular.

- Use blue first, then teal, orange, and gold as secondary series.
- Keep chart annotations crisp and human-readable.
- Prefer bars, lines, maps, and simple comparison modules over novelty charts.
- Let dashboards read like decision-support tools, not investor decks.

## Dates & Numbers

Prefer unambiguous date formatting in enterprise contexts.

- Use formats such as `3 February 2026` or `03-Feb-2026`.
- Avoid ambiguous numeric formats like `03/08/2026`.
- Keep number and currency formatting consistent across the product.

## Responsive Behavior

This variant is intended for desktop and mobile product surfaces.

- Collapse multi-column screens to single-column mobile layouts.
- Preserve button size, touch target clarity, and readable navigation labels.
- Reduce dashboard density before reducing text size.
- Keep important actions visible without relying on hover-only behavior.

## Imagery

Imagery remains important, but products should use it selectively.

- Hero areas, campaigns, and story modules can feature child-centered photography.
- Utility screens, settings pages, and data views should not depend on imagery for meaning.
- Never use imagery in a way that weakens dignity, obscures data, or creates emotional overload.

## Accessibility

Accessibility should be designed in from the start.

- Maintain strong contrast on controls and data surfaces.
- Use large enough text in nav, metrics, and mobile flows.
- Avoid color-only signaling for status.
- Support keyboard navigation, screen-reader clarity, and touch readability.

## Icons

Icons should support comprehension rather than replace it.

- Use familiar icon metaphors for common actions.
- Prefer icons plus labels over icons alone.
- Reserve unlabeled icon-only controls for truly standard actions in obviously constrained spaces.

## Performance & Connectivity

UNICEF products must still work well in low-bandwidth environments.

- Keep pages light and efficient.
- Avoid ornamental media or animation that slows task completion.
- Use imagery only where it adds meaning.
- Prefer simple, resilient layouts over highly layered interfaces that are expensive to render or maintain.

## Localization

Digital products should assume multilingual operation by default.

- Noto Sans remains the main localization engine.
- Keep labels and buttons flexible enough for longer translated strings.
- Avoid rigid text boxes that only work in English.
- Keep page structures resilient for right-to-left layouts when needed.
