# Installers

This file describes essential installers (methods) that can be used by Git projects to being installed or uninstalled using gim. Those installers and their steps stated below are sorted in the same order as gim will be trying to perform them. Regardless of used installers, their execution under gim **must not involve any user interaction**. All file paths stated below are relative to a Git repository directory.

## Installation

Finishing an installation using one of listed installers must install a project of the current commit.

* **Configure & Makefile installer** is used if an executable file named *configure* exists.
  1. The *configure* file is executed delivering `--prefix=<dir>` argument.
  2. A *Makefile* file must exist.
  3. Make calls a default target.
  4. Make calls the `install` target.
* **Makefile installer** is used if a *Makefile* file exists.
  1. Make calls a default target delivering `PREFIX=<dir>` argument.
  2. Make calls the `install` target delivering `PREFIX=<dir>` argument.

## Uninstallation

Finishing an uninstallation using one of listed installers must uninstall a project of the current commit while **keeeping its configuration files**.

* **Configure & Makefile installer** is used if an executable file named *configure* exists.
  1. The *configure* file is executed delivering `--prefix=<dir>` argument.
  2. A *Makefile* file must exist.
  4. Make calls the `uninstall` target.
* **Makefile installer** is used if a *Makefile* file exists.
  1. Make calls the `uninstall` target delivering `PREFIX=<dir>` argument.

## Notes

* All arguments stated above are **delivered automatically by gim**.
* A prefix argument represents a suggested installation directory path for Git projects. If a Git project respects the prefix, gim can perform both global and local installations.
* Gim also exports environment variables that can be used in any installer as stated in the [*CONTROL.md*](CONTROL.md) file.
