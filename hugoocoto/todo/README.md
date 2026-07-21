# todo

Command-line task manager for the terminal. Add tasks with dates, retrieve them by time frames (week, month, etc.). Includes an HTTP server for web-based visualization. Source at [hugoocoto/todo](https://github.com/hugoocoto/todo).

## Install

```lua
ur.Fetch { user = "hugoocoto", file = "todo/todo.lua" }
```

## Use

```
todo -help           Show help
todo                 Interactive mode
todo -serve          Start HTTP web UI server
todo -die            Kill the daemon
```

The `-serve` command starts a daemon. Use `xdg-open $(todo -serve)` to open the web UI in a browser. CSS is modifiable at runtime without restarting the server.
