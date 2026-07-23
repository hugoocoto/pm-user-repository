# pdfjoin

Merge multiple PDF files into one while preserving existing outlines and bookmarks. Source at [hugoocoto/pdfjoin](https://github.com/hugoocoto/pdfjoin). Depends on [pypdf](https://pypi.org/project/pypdf/).

**Tech stack:** Python 3, pypdf.

**Type:** CLI command-line tool.

## Use

```
pdfjoin <output.pdf> <input1.pdf> <input2.pdf> ...
```

Each input file becomes a top-level bookmark. Missing or non-PDF files are skipped with a warning. No configuration needed.
