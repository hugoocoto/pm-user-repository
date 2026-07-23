# b

Minimal web browser built on Qt6 WebEngine. Source at [hugoocoto/b](https://github.com/hugoocoto/b).

![Screenshot](https://raw.githubusercontent.com/hugoocoto/b/main/images/image.png)

**Tech stack:** C, Qt6 WebEngine.

**Type:** GUI desktop application.

## Use

```
b <url>       Open a URL
b --help      Show help
```

### Keybindings

| Key     | Action               |
| :------ | :------------------- |
| Ctrl-l  | Open search input    |
| Ctrl-h  | Open history nav     |
| Ctrl-H  | Load stored history  |
| Ctrl-t  | Toggle URL bar       |
| Ctrl-[  | Go back in history   |
| Ctrl-]  | Go forward in history |

Look and keybinds go in `config.h`. Requires a rebuild.
