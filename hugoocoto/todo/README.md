# todo

Command-line task manager for the terminal. Add tasks with dates, retrieve them by time frames (week, month, etc.). Includes an HTTP server for web-based visualization. Source at [hugoocoto/todo](https://github.com/hugoocoto/todo).

![Screenshot](https://raw.githubusercontent.com/hugoocoto/todo/main/images/2026-04-29_09:50:08.png)

![Web UI](https://raw.githubusercontent.com/hugoocoto/todo/main/images/serve1.png)

**Tech stack:** C, HTTP server (built-in).

**Type:** CLI/TUI command-line tool with web UI.

## Use

```
todo -help           Show help
todo                 Interactive mode
todo -serve          Start HTTP web UI server
todo -die            Kill the daemon
```

The `-serve` command starts a daemon. Use `xdg-open $(todo -serve)` to open the web UI in a browser. CSS is modifiable at runtime without restarting the server.
