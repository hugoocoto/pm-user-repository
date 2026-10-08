-- build.sh compiles with clang by default and writes the binary to build/.
return require('ur').Github {
    user     = "EpicGames",
    repo     = "raddebugger",
    branch   = "master",
    cmd      = "./build.sh raddbg release",
    artifact = "build/raddbg",
}
