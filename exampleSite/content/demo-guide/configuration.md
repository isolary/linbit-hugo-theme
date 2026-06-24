---
title: "Configuration"
weight: 3
---

This page has a child page (**Advanced tuning**), so it renders as an expandable
node in the sidebar — the active branch auto-expands when you are inside it.

## Minimal configuration

```toml
[node]
  name = "alpha"
  address = "10.0.0.1"
```

## Verifying

```bash
demo-client status
```

For the knobs that rarely need touching, see [Advanced tuning](../advanced-tuning/).
