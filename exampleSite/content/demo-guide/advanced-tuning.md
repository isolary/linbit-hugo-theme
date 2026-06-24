---
title: "Advanced tuning"
weight: 1
parent: "configuration"
---

This page sets `parent: "configuration"` in its front matter, which is how the
theme nests it under Configuration in the sidebar. Flat guides simply omit
`parent` and render as a single level.

## When to tune

Rarely. The defaults are sensible.

## Example

```toml
[tuning]
  queue-depth = 128
  flush-interval = "200ms"
```
