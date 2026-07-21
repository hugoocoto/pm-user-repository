# pdfjoin

Merge multiple PDF files into one, preserving existing outlines and bookmarks. Written in Python. Source at [hugoocoto/pdfjoin](https://github.com/hugoocoto/pdfjoin). Depends on [pypdf](https://pypi.org/project/pypdf/).

## Install

```lua
ur.Fetch { user = "hugoocoto", file = "pdfjoin/pdfjoin.lua" }
```

## Use

```
pdfjoin <output.pdf> <input1.pdf> <input2.pdf> ...
```

Each input file becomes a top-level bookmark. Missing or non-PDF files are skipped with a warning. No configuration needed.
