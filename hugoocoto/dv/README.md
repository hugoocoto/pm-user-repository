# dv

A visual, terminal-based directory viewer and batch file manager with regex-powered operations.

## Installation

```lua
ur.Fetch { user = "hugoocoto", file = "dv/dv.lua" }
```

## Usage

Run `dv` to open the current directory. Operations use POSIX BRE patterns:

| Command             | Action                                |
| :------------------ | :------------------------------------ |
| `PATTERN`           | Highlight files matching pattern      |
| `S/PATTERN/TEXT`    | Substitute text in matching filenames |
| `I/PATTERN/TEXT`    | Insert text at start of filename      |
| `A/PATTERN/TEXT`    | Append text to end of filename        |
| `CD/PATTERN`        | Change to first matching directory    |
| `RM/PATTERN`        | Delete matching files/directories     |
| `PROT/PATTERN/MODE` | Change permissions (chmod octal)      |
| `CLEAR`             | Clear the screen                      |
| `<CR>`              | List all entries                      |
