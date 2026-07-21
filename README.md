# pm User Repository

Community registry of package definitions for [pm](https://github.com/hugoocoto/pm).

![Validate](https://github.com/hugoocoto/pm-user-repository/actions/workflows/validate.yml/badge.svg)
[![Docs](https://img.shields.io/badge/docs-online-blue)](https://hugoocoto.github.io/pm-user-repository/docs/)

The `ur` module (user repository) lets pm install packages from Lua definitions hosted in this repo. You write a short config, `ur` downloads and executes the definition, pm uses the returned table to fetch, build, and install the binary.

## How ur works

1. You download `ur.lua` into your pm config directory.
2. Your `init.lua` requires it and calls `ur.Fetch { ... }` for each package.
3. `ur.Fetch` downloads the Lua file from this repo over HTTPS, loads it in text-only mode (blocks bytecode injection), and `pcall`s it to get the table.
4. pm consumes the table to handle download, build, and install.

The `ur.Github` helper automates the common case: fetch a tarball from a GitHub repo, extract it, run `make` (or a custom build command), and return the artifact path. It supports `gh auth token` for authenticated API requests (5000 req/hr vs 60 unauthenticated).

## Usage

Download the UR module:

```sh
mkdir -p ~/.config/pm && curl -o ~/.config/pm/ur.lua https://raw.githubusercontent.com/hugoocoto/pm-user-repository/refs/heads/main/ur.lua
```

Include it in your pm config (`init.lua`):

```lua
local ur = require("ur")
```

Add packages:

```lua
Packages = {
    ur.Fetch { user = "hugoocoto", file = "nvim-nightly/nvim.lua" },
    ur.Fetch { user = "hugoocoto", file = "helium/helium.lua" },
}
```

## Available packages

| User | File | Package |
|------|------|---------|
| hugoocoto | `b/b.lua` | `b` CLI web browser |
| hugoocoto | `dv/dv.lua` | `dv` directory viewer |
| hugoocoto | `eqnx/eqnx.lua` | `eqnx` (archived) |
| hugoocoto | `fetch/fetch.lua` | `fetch` system info fetcher |
| hugoocoto | `helium/helium.lua` | Helium 0.14.5.1 AppImage |
| hugoocoto | `nvim-nightly/nvim.lua` | Neovim nightly AppImage |
| hugoocoto | `pdfjoin/pdfjoin.lua` | `pdfjoin` PDF merger |
| hugoocoto | `st/st.lua` | `st` simple terminal |
| hugoocoto | `tetris/tetris.lua` | `tetris` terminal game |
| hugoocoto | `todo/todo.lua` | `todo` task manager |
| hugoocoto | `vicel/vicel.lua` | `vicel` spreadsheet editor |
| hugoocoto | `wallpaper/wallpaper.lua` | `wallpaper` for Wayland |
| hugoocoto | `yaci/yaci.lua` | `yaci` calculator REPL |
| hugoocoto | `zrun/zrun.lua` | `zrun` fuzzy launcher |

## How to contribute

1. Fork this repo.
2. Create a directory named after your GitHub username.
3. Add your `.lua` files inside it. You can use subdirectories (e.g., `username/toolname/toolname.lua`).
4. Open a pull request. CI validates Lua syntax and root structure.
5. The pm team reviews and merges.

### Package format

Each `.lua` file must return a table with these fields:

| Field | Required | Description |
|-------|----------|-------------|
| `url` | Yes | Download URL for source archive or binary |
| `build` | Yes | Shell commands to produce the executable |
| `name` | No | Filename to save the download as (inferred from URL if absent) |
| `artifact` | Yes* | Executable name from `build` (falls back to `name`) |
| `last_modified_cmd` | No | Command to check remote Last-Modified date |

`artifact` is required unless `name` is set (defaults to `name`).

Example (`nvim.lua`):
```lua
return {
    url = "https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.appimage",
    name = "nvim",
    build = "chmod +x nvim",
}
```

### Guidelines

- Name your directory after your GitHub username.
- Place a `README.md` alongside your `.lua` file to document the package. It renders on the [docs page](https://hugoocoto.github.io/pm-user-repository/docs/).
- Keep Lua files syntactically valid and returning a table.
- Test your config locally before submitting.
- Do not include tokens, passwords, or private keys.
- Only `ur.lua` lives at the root. All other `.lua` files go inside a user directory.
- When updating an existing file, explain what changed in the PR description.
