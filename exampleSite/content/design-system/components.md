---
title: "Components"
weight: 2
---

These buttons are the `.btn` classes from `@linbit/core-css`, vendored into the
theme. They are plain CSS that consumes tokens — the same classes work in any
LINBIT property, not just this Hugo theme.

## Buttons — variants

<div style="display:flex;gap:.75rem;flex-wrap:wrap;align-items:center;margin:1rem 0">
  <button class="btn btn--primary">Primary</button>
  <button class="btn btn--secondary">Secondary</button>
  <button class="btn btn--destructive">Destructive</button>
  <button class="btn btn--primary" disabled>Disabled</button>
</div>

## Buttons — sizes

<div style="display:flex;gap:.75rem;flex-wrap:wrap;align-items:center;margin:1rem 0">
  <button class="btn btn--primary btn--sm">Small</button>
  <button class="btn btn--primary">Default</button>
  <button class="btn btn--primary btn--lg">Large</button>
</div>

<div class="linbit-callout linbit-callout-info">
<p class="linbit-callout-title">📝 NOTE</p>

`button` is the first component in `core-css`. Treatments like an **eyebrow**
label or a **divider** are the next ones slated to move upstream — once they
land, they appear here the same way, by re-vendoring.
</div>
