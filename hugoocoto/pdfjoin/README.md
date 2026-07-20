# pdfjoin

A command-line tool to merge multiple PDF files into a single document while preserving existing outlines/bookmarks.

## Installation

```lua
ur.Fetch { user = "hugoocoto", file = "pdfjoin/pdfjoin.lua" }
```

## Usage

```
pdfjoin <output.pdf> <input1.pdf> <input2.pdf> ...
```

Features:
- Preserves existing PDF outlines/bookmarks
- Each input file added as a top-level bookmark
- Skips missing or non-PDF files with a warning
- No configuration needed
