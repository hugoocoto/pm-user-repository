# pm-user-repository — AGENTS.md

This repo is a community registry of Lua package definitions consumed by `pm`. Each `.lua` file returns a table describing how to download, build, and install a package.

## Validation

- **Local syntax check:** `luac -p path/to/file.lua` (same check CI runs).
- **Full CI-equivalent:** `find . -name '*.lua' -not -path './.git/*' -exec luac -p {} +` — runs on every PR/push.
- **Root structure check:** CI rejects any `.lua` at repo root other than `ur.lua`.
- No test framework, no linter, no typechecker, no formatter.

## Package definition patterns

1. **Direct binary download** — set `url`, `name` (saved filename), and `build` (e.g. `chmod +x name`).
2. **GitHub archive helper** — call `require('ur').Github { ... }`. Returns a table with built-in defaults. Supports overrides:
   - `cmd` — custom build command (default: `make`)
   - `artifact` — name of the built binary (defaults to `repo`)
   - `branch` — branch to fetch (default: `main`)
   - `url`, `name`, `last_modified_cmd` — override any default

The default `Github` build command is: `tar xzf <repo>.tar.gz && cp -fr <repo>-<branch>/* . && make`

## Structure rules

- Only `ur.lua` is allowed at repo root. All other `.lua` files must live under a user-named directory (e.g. `hugoocoto/toolname/toolname.lua`).
- `packages.json` must be kept in sync with actual packages — CI does **not** verify this; the docs site relies on it.
- `README.md` (case-sensitive) alongside a `.lua` file is rendered on the docs site.

## Architecture

- `ur.lua` at root is the core runtime: `Fetch()` downloads a Lua file over HTTPS, compiles it in text-only mode (`load(body, _, "t")` — blocks bytecode injection), `pcall`s it, and returns the table.
- `ur.Github()` accepts a token from `gh auth token` to avoid GitHub API rate limiting (5000 vs 60 req/hr).
- Docs site (`docs/`) is hand-written static HTML/CSS (not generated).

## Current state

- Single user namespace: `hugoocoto/`. Count packages with: `find hugoocoto -name '*.lua' | wc -l`
- No `.gitignore` — be careful not to commit artifacts.
