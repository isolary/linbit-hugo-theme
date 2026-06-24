---
title: "Introduction"
weight: 1
---

The **linbit-docs** theme renders documentation guides with a nested sidebar, a
sticky table of contents, and admonitions — all styled from the LINBIT design
system. This page carries a few headings so the on-this-page list (top-right on
wide screens) has something to track.

## What you are looking at

The left sidebar is a collapsible tree built from each page's `weight` and
optional `parent`. The right rail is the in-page table of contents. Both are
token-styled and re-theme automatically in dark mode (toggle, top-right).

## Admonitions

<div class="linbit-callout linbit-callout-info">
<p class="linbit-callout-title">📝 NOTE</p>

Admonitions are plain `<div class="linbit-callout">` blocks. Their accent comes
from the `--status-*` tokens, so light and dark modes need no extra rules.
</div>

<div class="linbit-callout linbit-callout-warning">
<p class="linbit-callout-title">⚠️ WARNING</p>

A warning callout draws its border and tint from `--status-warning`.
</div>

## Code blocks

```bash
linstor node create alpha 10.0.0.1
linstor resource-definition create demo --port 7000
```

Continue to [Installation](../installation/).
