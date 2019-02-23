# Installer methods

This file describes which methods can be used by Git projects to being installed or uninstalled by gim. Those methods and their steps stated below are sorted in the same order as gim will be trying to perform them. Regardless of used methods, their execution **must not involve any user interaction**. All used file paths are relative to the project repository directory.

## Installation

Finishing an installation method must install a target Git project of the commit.

* **Configure & Makefile method** is used if an executable file named *configure* exists.
  1. The *configure* file is executed delivering `--prefix=<dir>` argument.
  2. A *Makefile* file must exist.
  3. Make calls a default target.
  4. Make calls the `install` target.
* **Makefile method** is used if a *Makefile* file exists.
  1. Make calls a default target delivering `PREFIX=<dir>` argument.
  2. Make calls the `install` target delivering `PREFIX=<dir>` argument.

## Uninstallation

Finishing an uninstallation method must uninstall a target Git project of the commit while **keeeping its configuration files**.

* **Configure & Makefile method** is used if an executable file named *configure* exists.
  1. The *configure* file is executed delivering `--prefix=<dir>` argument.
  2. A *Makefile* file must exist.
  4. Make calls the `uninstall` target.
* **Makefile method** is used if a *Makefile* file exists.
  1. Make calls the `install` target delivering `PREFIX=<dir>` argument.

## Notes

* All arguments stated above are **delivered automatically by gim**.
* A prefix argument represents an installation directory. If a Git project uses it, gim can perform both global and local installations.
