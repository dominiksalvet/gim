# Rules

A Git project is **gim compliant** if it meets all of the following rules:

1. Its Git repository has at least one annotated tag.
2. Once an annotated tag is publicly created, it can be removed only to immediately create an annotated tag with the same name on a different commit with the same functionality as the previously tagged commit.
3. Every annotated tag's commit contains a *makefile* with at least `install` and `uninstall` targets, where:
   * Target `install` installs all dependencies of the project of the commit and then the project itself automatically, whatever steps needed to be taken and default arguments needed to be used to achieve it.
   * Target `uninstall` uninstalls the project of the commit automatically. The project's configuration files and dependencies are not removed to make updating the project using gim possible.
4. The status of installed/uninstalled project is determined by existence of an executable file localed in any directory defined by the `$PATH` variable of the root user, where:
   * The file's name is equal to the Git repository name or it is equal to one of the names stated in the *gim/names* file in the repository separated by spaces from the oldest used name to the current name. The *gim/names* file is present at least in case of the repository name change.
   * It supports at least `--version` or `-version` flag, which returns version of currently installed project and it exactly matches project's Git tag names. When the `--version` flag is not supported, it exits with non-zero exit code to indicate to try the other flag.

---

## Compliance since a certain version

To **allow existing projects to adapt** to gim, a Git project is also **gim compliant** if it meets all of the [previous rules](#rules) and the following rules **since it's certain version**:

1. Every annotated tag's commit has a README file with an install section and contains the information about gim compliance since a certain version somewhere at the section's beginning. This could be as easy as: "This project is [gim](https://gitlab.com/dominiksalvet/gim) compliant since version \<version\>."
