# Methods

This file describes which methods can be used by Git projects to being installed or uninstalled by gim. Those methods and their steps are sorted in the same order as gim will be trying to perform them. Regardless of used methods, their execution **must not involve any user interaction**. Used file paths are relative to the project repository directory unless otherwise stated.

## Installation

Finishing any installation method must install a target Git project of the commit.

* **Configure & Makefile method** is used if executable file named *configure* exists.
  1. The *configure* file is executed from a build directory delivering `--prefix=<dir>` argument.
  2. A *Makefile* file must exist in the build directory.
  3. Make calls a default target in the build directory.
  4. Make calls the `install` target in the build directory.
* **Makefile method** is used if a *Makefile* exists.
  1. Make calls a default target delivering `BUILD_DIR=<dir>`, `PREFIX=<dir>` arguments.
  2. Make calls the `install` target delivering `BUILD_DIR=<dir>`, `PREFIX=<dir>` arguments.

## Uninstallation

Finishing any uninstallation method must uninstall a target Git project of the commit while **keeeping its configuration files**.

* **Configure & Makefile method** is used if executable file named *configure* exists.
  1. The *configure* file is executed from a build directory delivering `--prefix=<dir>` argument.
  2. A *Makefile* file must exist in the build directory.
  3. Make calls the `uninstall` target in the build directory.
* **Makefile method** is used if a *Makefile* exists.
  1. Make calls the `uninstall` target delivering `BUILD_DIR=<dir>`, `PREFIX=<dir>` arguments.

## Notes

* A prefix argument stands for a base directory, where the target Git project is being installed or uninstalled from.
  * If used, gim can perform both global and local installations.
* A build argument represents a directory path, where the target Git project should build itself from a source code.
  * If used, gim can perform updates of the project faster.
* All arguments stated above are **delivered automatically by gim**. You don't have to use them, but you will lose the mentioned features.
