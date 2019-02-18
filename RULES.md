# Rules

A Git project is **gim compliant** if an associated repository is gim compliant. A Git repository is **gim compliant** if it meets all following rules applied on its master branch. A Git repository is **gim compliant since a certain version** if it meets all following rules applied on its master branch since the version has been released.

1. It has at least one annotated tag.
2. An annotated tag can be removed only if being immediately recreated with the same name while its commit **keeps the same functionality** as the original one.
3. Every annotated tag's commit has a *makefile* containing the following targets. Furthermore, their execution **does not involve any user interaction**; building sources and delivering default arguments are expected.
   * `install` - installs dependencies and then the project of the commit.
   * `uninstall` - uninstalls the project of the commit while **keeping configuration files and dependencies**.
4. If further control needed, it respects control policy stated in the [*CONTROL.md*](CONTROL.md) file.
