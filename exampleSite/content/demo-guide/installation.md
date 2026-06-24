---
title: "Installation"
weight: 2
---

Installing the demo stack is a two-step affair. This page is deliberately short —
it exists to show prev/next navigation and a second sidebar entry.

## Add the repository

```bash
curl -fsSL https://example.invalid/linbit.gpg | sudo tee /etc/apt/keyrings/linbit.gpg
echo "deb https://packages.example.invalid stable main" | sudo tee /etc/apt/sources.list.d/linbit.list
```

## Install the packages

```bash
sudo apt-get update
sudo apt-get install demo-server demo-client
```

<div class="linbit-callout linbit-callout-error">
<p class="linbit-callout-title">🔴 DANGER</p>

This is a synthetic example. The repository URLs above are not real.
</div>
