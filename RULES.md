# Rules

A Git project is **gim compliant** only if it meets all of the following rules:

1. Its Git repository has at least one commit tagged.
2. The status of installed/uninstalled project is determined by existence of a file with the same name as the Git project name located in any of directories defined by the `$PATH` variable of logged user's.
3. The file stated above is executable and also supports at least `--version` or `-version` flag, which returns version of currently installed project and it exactly matches project's Git tag names. When the `--version` flag is not supported, it exits with non-zero exit code to indicate to try the other flag.
4. Every tagged commit contains a *makefile* with `install` and `uninstall` targets, where:
   * Target `install` installs all dependencies and then the project itself automatically, whatever steps need to be done to achieve it.
   * Target `uninstall` uninstalls the project automatically, the project's configuration files are not removed.
5. If the software of your project requires root permissions, it is also responsible for dealing with that fact.

A Git project is also **gim compliant** if it meets all of the rules stated above and the following rules since it's certain version:

1. The information about gim compliance since a certain version must be accessible to the project users in every compliant tagged commit in the appropriate place (E.g., an installation section of README file) to prevent problems raised when using gim on non-compliant versions.
