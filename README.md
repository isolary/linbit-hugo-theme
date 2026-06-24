# LINBIT Hugo theme

LINBIT's Hugo starter theme: a brand foundation built on **Tailwind v4** and the
**LINBIT design system** (`@linbit/tokens` + `@linbit/core-css`), with
**documentation** as its flagship capability.

The documentation chrome — nested sidebar, sticky on-this-page table of contents,
single-page view, native i18n, PDF/EPUB download links, and built-in search — is
**content-conditional**: it only appears when a page is shaped like docs (lives in
a section, has child pages, has multiple headings). A plain page renders as a clean
branded shell (header + content + footer), so the theme also suits non-docs sites.

Theme name: `linbit`.

## Quick start

```bash
make serve     # installs the Tailwind toolchain, serves the exampleSite at :1315
```

The bundled **`exampleSite/`** is a self-contained demo + living style guide: a
synthetic "Demo Guide" exercising every docs feature, and a "Design System" section
showing token swatches and `@linbit/core-css` components. It finds the theme via the
`exampleSite/themes/linbit -> ../..` symlink, so it runs standalone and travels with
the theme.

### Requirements

- **Hugo extended** ≥ 0.128 (uses `css.TailwindCSS`).
- **Node.js** (for the Tailwind v4 CLI; installed by `make serve` into `node_modules/`).

## Design system

The theme vendors the design-system CSS into `assets/css/`:

| File | Source |
|---|---|
| `assets/css/_tokens.css`   | `@linbit/tokens` → `dist/variables.css` (primitives + semantic, light/dark) |
| `assets/css/_core-css.css` | `@linbit/core-css` component classes (`.btn`, …), flattened |

`assets/css/main.css` is the Tailwind v4 entry: its `@theme` block names ergonomic
utilities (`bg-surface`, `text-fg`, `bg-action`, …) by pointing them straight at the
design-system vars. Dark mode flips on `[data-mode="dark"]` (design-system's native
attribute). **To refresh tokens/components:** copy the upstream files over the two
`assets/css/_*.css` vendored copies.

## What a consuming site must provide

This theme expects the consuming Hugo site to supply a few conventions (the
`exampleSite/` is the reference for all of them):

**Config** (`hugo.toml`):
- Output formats `singlepage` and `searchindex`, wired into `[outputs]`
  (`section = ["HTML","singlepage"]`, `home = ["HTML","searchindex"]`).
- `markup.goldmark.renderer.unsafe = true` (admonitions are raw HTML).
- `[build.buildStats] enable = true` + cachebusters, so Tailwind sees the classes.

**Content:**
- Front matter: `weight` (sidebar/order) and optional `parent` (the stem of the
  parent page) to nest in the sidebar tree.
- Admonitions: raw `<div class="linbit-callout linbit-callout-{info|warning|error}">`
  blocks with a `<p class="linbit-callout-title">` and a blank line before the body.
- Search page: a `search-linbit.md` with `layout: linbit-search`, `slug: search`,
  `excludeSearch: true`.

**Static assets:**
- `static/images/LINBIT-logo.svg` — the header inlines it (so its wordmark can be
  recolored in dark mode).
- `static/fonts/*.ttf` — Roboto, Titillium Web, Roboto Mono (see the `@font-face`
  rules in `assets/css/main.css`).
- For working PDF/EPUB download links, `static/_build/<guide>/<guide>.{pdf,epub}`.

## License

MIT — see [LICENSE](LICENSE). Bundled third-party: FlexSearch (Apache-2.0, see
`assets/lib/flexsearch/LICENSE`).
