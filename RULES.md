# Rules

A project is **gim compliant** only if it meets all of the following rules:

1. Its Git repository have at least one tag.
2. Every tagged commit of its Git repository contains a *makefile* with `install` and `uninstall` targets, where:
   * Target `install` installs all dependencies and the project itself.
   * Target `uninstall` uninstalls the project. Created configuration files will not be removed.
3. Main project's program supports `-version` or `--version` flag, which returns version of currently installed program and it matches to Git tag names.
