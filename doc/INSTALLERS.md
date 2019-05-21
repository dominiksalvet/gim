# Installers

This file describes installers (methods) that can be used by Git projects to being installed or uninstalled using gim. Those installers are stated below in the same order as gim tries to use them.

## cami

It is a standard "configure, make, make install" approach. A prefix is delivered as `--prefix=<path>` argument to *configure* script. Building, installation and uninstallation is implemented as `<default>`, `install` and `uninstall` Make targets.

## makei

Building, installation and uninstallation is implemented as `<default>`, `install` and `uninstall` Make targets. A prefix is delivered as `PREFIX=<path>` macro assignment when calling them.
