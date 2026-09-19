# isf

Keeps a local folder and a remote one the same, both ways, over ssh: change a file on either side and it shows up on the other a moment later. Source at [hugoocoto/isf](https://github.com/hugoocoto/isf).

**Tech stack:** C (static binary from the nightly release, x86_64 or aarch64).

**Type:** CLI file sync.

## Use

```
isf ./proj server:proj      # the first time: where it syncs to
isf ./proj                  # later: remembered
```

isf has to be on the remote too. Copy the same binary there:

```
scp "$(command -v isf)" server:.local/bin/isf
```

If `~/.local/bin` isn't in the `PATH` of ssh commands on the server, add `-I .local/bin/isf` the first time. Linux on both sides, ssh with SFTP (the default in OpenSSH).
