# Rules

A project is **gim compliant** only if it meets all of the following rules:

1. Its Git repository has at least one tag.
2. Every tagged commit of its Git repository contains a *makefile* with `install` and `uninstall` targets, where:
   * Target `install` installs all dependencies and the project itself. Main program of the project is installed in any of directories defined by `$PATH`.
   * Target `uninstall` uninstalls the project. Created configuration files will not be removed.
3. Main program of the project supports `-version` or `--version` flag, which returns only version of currently installed program with no additional information and it exactly matches to Git tag names.
