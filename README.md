# dominionlabs.dev

Static landing for Dominion Labs. Astro 5 + TS + Tailwind 4 + design tokens.

## Stack

- **Astro 5** — SSG + island components (less JS shipped vs React/Vite-React)
- **TypeScript** strict mode
- **Tailwind 4** with CSS custom properties as design tokens
- **No client-side React** unless a section needs reactive state
- **WCAG 2.2 AA** floor
- **Schema.org JSON-LD** Organization + Service + Product
- **/llms.txt** for LLM-readable site index

## Deploy

- v1: GitHub Pages with custom CNAME (`dominionlabs.dev`)
- v2 (if dynamic features needed): Cloudflare Pages or Hetzner Theia

## Design tokens

Defined in `src/styles/tokens.css` as CSS custom properties. Restyle = swap token set.

| Token group | Examples |
|---|---|
| Color | `--c-bg`, `--c-fg`, `--c-accent-purple`, `--c-text-dim` |
| Type | `--font-sans`, `--font-serif`, `--text-display`, `--text-base` |
| Spacing | `--space-1` through `--space-24` (4px scale) |
| Motion | `--ease-out`, `--duration-fast`, `--duration-slow` |

## Performance budget

- Initial JS: < 50KB gzipped
- LCP < 2s
- INP < 100ms
- CLS = 0
- Lighthouse Performance ≥ 95, Accessibility = 100

## Content principle

Pull prose from substrate (origin ledger + framework excerpts + master_list) rather than write generic marketing copy. Brayd voice as canonical asset.

## Status

Scaffold authored 2026-05-19 during dominionlabs.dev build burst (B162 + B165-B170).
