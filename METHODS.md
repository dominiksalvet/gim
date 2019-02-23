# Methods

This file describes which methods may be used by Git projects to being installed or uninstalled by gim. Regardless of used methods, their execution **must not involve any user interaction**. Used file paths are relative to the project repository directory unless otherwise stated.

## Installation

Finishing any installation method must install a target Git project of the commit.

* Configure & Makefile
  1. An executable file named *configure* must exist.
  2. The *configure* file is executed from a build directory delivering `--prefix=<dir>` argument.
  3. A *Makefile* file must exist in the build directory.
  4. Make calls a default target in the build directory.
  5. Make calls the `install` target in the build directory.
* Makefile
  1. A *Makefile* must exist.
  2. Make calls a default target delivering `BUILD_DIR=<dir>`, `PREFIX=<dir>` arguments.
  3. Make calls the `install` target delivering `BUILD_DIR=<dir>`, `PREFIX=<dir>` arguments.

## Uninstallation

Finishing any uninstallation method must uninstall a target Git project of the commit while **keeeping its configuration files**.

* Configure & Makefile
  1. An executable file named *configure* must exist.
  2. The *configure* file is executed from a build directory delivering `--prefix=<dir>` argument.
  3. A *Makefile* file must exist in the build directory.
  4. Make calls the `uninstall` target in the build directory.
* Makefile
  1. A *Makefile* must exist.
  3. Make calls the `uninstall` target delivering `BUILD_DIR=<dir>`, `PREFIX=<dir>` arguments.

## Notes

* A prefix argument stands for a base directory, where the target Git project is being installed or uninstalled from.
  * If used, gim can perform both global and local installations.
* A build argument represents a directory path, where the target Git project should build itself from a source code.
  * If used, gim can perform updates of the project faster.
* All arguments stated above are **delivered automatically by gim**. You don't have to use them, but you will lose the mentioned features.
