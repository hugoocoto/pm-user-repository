# docs/ — pm-user-repository web site

The docs site lives at **https://hugoocoto.github.io/pm-user-repository/docs/**. Served via GitHub Pages from the `main` branch, `docs/` directory (no Jekyll, no build step).

## How it works

- Single-page app: `index.html` + `style.css`. No frameworks, no generator, no build.
- `packages.json` is fetched at runtime from `raw.githubusercontent.com`. The site **will be wrong** if `packages.json` is stale — CI does **not** verify it.
- Markdown rendering via CDN: `marked.js` from jsdelivr. No other dependencies.
- Package `README.md` files are fetched at runtime and rendered by `marked.parse()`. If absent, a fallback `<dl>` with file + description is shown.
- Hash-based routing: `#user/dir` loads a package. First package is loaded by default if no hash.

## When adding a package

1. Add entry to `packages.json` at repo root (same format: `user`, `dir`, `file`, `description`).
2. Optionally add a `README.md` next to the `.lua` file — it will be rendered on the detail page.

## Editing the site

- `index.html` is the entire app (158 lines). No template, no partials.
- `style.css` is standalone. It targets production — any change ships immediately on merge to `main`.
- No preview server. Open `docs/index.html` locally in a browser to test (note: `packages.json` and `README.md` fetches are cross-origin from `file://` and will fail — the site works correctly only when served via GitHub Pages).
- There is no CNAME, no custom domain, and no CDN config.

## Constraints

- `index.html` and `style.css` are the only source files. Do not add other files to `docs/` unless they are runtime dependencies.
- The `marked.js` CDN URL (`https://cdn.jsdelivr.net/npm/marked/marked.min.js`) is a hard dependency — do not remove or change without testing.
