# tui-do

Command-line task manager for the terminal. Tasks live in a plain Lua config
file and are added, listed, filtered by time frame (week, overdue, etc.) and
edited in place. Successor to [hugoocoto/todo](https://github.com/hugoocoto/todo).
Source at [hugoocoto/tui-do](https://github.com/hugoocoto/tui-do).

**Tech stack:** C, Lua (config format).

**Type:** CLI command-line tool.

## Use

```
todo                 Show all tasks
todo --in 7          Tasks for the next 7 days
todo --week          Tasks for this week (until Monday)
todo --overdue       Tasks that are already due
```

Tasks are stored in `~/.config/todo/config.lua` as a `Tasks` table; the file
is plain Lua, so it can be hand-edited too.
