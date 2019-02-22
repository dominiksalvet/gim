# Methods

This file describes which methods can be used by Git projects to being installed or uninstalled by gim. Regardless of used methods, their execution **must not involve any user interaction**. All used file paths stated below are relative to the project repository.

## Installation

After successfully finishing all steps of an installation method, a target Git project of a commit must be installed.

* Makefile
  1. If *configure* file exists and is executable, it is executed.
  2. Now a *Makefile* must exist.
  3. Make calls a default target.
  4. Make calls the `install` target.

## Uninstallation

After successfully finishing all steps of an uninstallation method, a target Git project of a commit must be uninstalled while **keeping its configuration files**.

* Makefile
  1. If *configure* file exists and is executable, it is executed.
  2. Now a *Makefile* must exist.
  3. Make calls the `uninstall` target.
