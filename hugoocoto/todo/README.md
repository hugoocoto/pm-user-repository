# todo

A simple command-line task manager for the terminal. Add tasks with dates and retrieve them by time frames (e.g. a week). Also includes an HTTP server for web-based visualization.

## Installation

```lua
ur.Fetch { user = "hugoocoto", file = "todo/todo.lua" }
```

## Usage

```
todo -help           Show help
todo                 Interactive mode
todo -serve          Start HTTP web UI server
todo -die            Kill the daemon
```

The `-serve` command starts a daemon that serves a web-based task visualizer. Use `xdg-open $(todo -serve)` to open it in a browser.
