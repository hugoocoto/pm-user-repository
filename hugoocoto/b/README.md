# b

A minimal but customizable web browser powered by a Chromium-based engine (Qt6).

## Installation

```lua
ur.Fetch { user = "hugoocoto", file = "b/b.lua" }
```

## Usage

```
b <url>       Open a URL
b --help      Show help
```

### Keybindings

| Key     | Action               |
| :------ | :------------------- |
| `Ctrl-l` | Open search input   |
| `Ctrl-h` | Open history nav    |
| `Ctrl-H` | Load stored history |
| `Ctrl-t` | Toggle URL bar      |
| `Ctrl-[` | Go back in history  |
| `Ctrl-]` | Go forward in history |

Look and keybinds can be customized in `config.h` (requires rebuild).
