# yaci

Yet Another Calculator Interpreter: an interactive REPL for evaluating mathematical and text expressions. Supports FFI to call C library functions. Source at [hugoocoto/yaci](https://github.com/hugoocoto/yaci).

**Tech stack:** C, flex + bison, GNU readline, libffi.

**Type:** CLI REPL interpreter.

## Install

ur.Fetch { user = "hugoocoto", file = "yaci/yaci.lua" }

## Use

```
yaci                          Interactive REPL
yaci script.yc                Run script, then REPL
yaci script.yc --norepl       Run script only
yaci --help                   Show options
```

### Examples

```
>> 2 + 3
=5
>> pi * 5 ^ 2
=78.5398
>> "hello" as list
={"hello"}
>> open <math.h>
>> sqrt(2)
=1.41421
```

Supports numbers, strings, lists, variables, constants, type casting, assertions, and FFI to any C shared library.
