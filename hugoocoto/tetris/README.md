# tetris

Play Tetris in your terminal. Source at [hugoocoto/tetris](https://github.com/hugoocoto/tetris).

![Screenshot](https://raw.githubusercontent.com/hugoocoto/tetris/main/image.png)

**Tech stack:** C, POSIX threads, termios.

**Type:** CLI terminal game.

## Install

ur.Fetch { user = "hugoocoto", file = "tetris/tetris.lua" }

## Use

```
tetris
```

### Controls

| Key     | Action            |
| :------ | :---------------- |
| w       | Rotate            |
| a       | Move left         |
| s       | Move down         |
| d       | Move right        |
| Space   | Drop straight     |
| Esc     | Quit              |

Score tracking, random color pieces, progressive speed-up. Board size and controls are customizable.
