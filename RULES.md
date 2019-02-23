# Rules

A Git project is **gim compliant** if an associated repository is gim compliant. A Git repository is **gim compliant** if it meets all following rules applied on its master branch. A Git repository is **gim compliant since a certain version** if it meets all following rules applied on its master branch since the version has been released.

1. It has at least one annotated tag.
2. Annotated tags cannot be removed.
3. It supports installation and uninstallation as described in the [*INSTALLERS.md*](INSTALLERS.md) file.
4. **If further control needed**, it respects a control policy stated in the [*CONTROL.md*](CONTROL.md) file.
