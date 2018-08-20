# Rules

A project is **gim compliant** only if it meets all of the following rules:

1. Its Git repository has at least one tagged commit.
2. Every tagged commit of its Git repository contains a *makefile* with `install` and `uninstall` targets, where:
   * `install` target installs all dependencies and the project itself automatically. Main program of the project is installed in any of directories defined by `$PATH`.
   * `uninstall` target uninstalls the project. Created configuration files are not removed.
3. Main program of the project supports `-version` or `--version` flag, which returns version of currently installed program and it exactly matches project's Git tag names.
4. In case of requiring root permissions for `install` or `uninstall`, the project itself is responsible for checking it.
