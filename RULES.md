# Rules

A Git repository is **gim compliant** if it meets all of the following rules:

1. It has at least one annotated tag.
2. Once an annotated tag is publicly created, it can be removed only to immediately create an annotated tag with the same name on a different commit with the same software functionality as the previously tagged commit.
3. Every annotated tag's commit contains a *makefile* with at least `install` and `uninstall` targets, where:
   * Target `install` installs all dependencies of the project of the commit and then the project itself automatically, whatever steps needed to be taken and default arguments needed to be used to achieve it.
   * Target `uninstall` uninstalls the project of the commit automatically. The project's configuration files and dependencies are not removed to make updating the project using gim possible.
4. The status of installed/uninstalled repository is determined by existence of an agent (an executable file) localed in any directory defined by the `$PATH` variable of the root user, where:
   * The name of the agent is equal to the repository name if the *gim/names* file is not present in the repository. Otherwise, the agent's name is equal to one of the names stated in the *gim/names* file with the following restrictions applied for the *gim/names* file:
     * The file must not be create empty and once it is created, it can't be removed.
     * The file can only be modified by appending a new name on the end of the first line separating the last stated name by a space. The only exception of this rule is fixing a typo.
     * Before making any changes that will cause renaming the agent or before renaming the repository itself, create the *gim/names* file containing `<old-name> <new-name>` or append ` <new-name>` to the existing one and propagate the changes to the repository. Then the rest can be done in no particular order.
   * It supports at least `--version` or `-version` flag, which returns version of currently installed project and it exactly matches project's Git tag names. When the `--version` flag is not supported, it exits with non-zero exit code to indicate to try the other flag.

---

## Compliance since a certain version

To **allow existing projects to adapt** to gim, a Git repository is also **gim compliant** if it meets all of the [previous rules](#rules) and the following rules **since it's certain version**:

1. Every annotated tag's commit has a README file with an install section and contains the information about gim compliance since a certain version somewhere at the section's beginning. This could be as easy as:

> This project is [gim](https://gitlab.com/dominiksalvet/gim) compliant since version \<version\>.
