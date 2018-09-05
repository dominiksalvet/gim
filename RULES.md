# Rules

A Git project is **gim compliant** if it meets all of the following rules:

1. Its Git repository has at least one annotated tag.
2. Every annotated tag's commit contains a *makefile* with at least `install` and `uninstall` targets, where:
   * Target `install` installs all dependencies of the project of the commit and then the project itself automatically, whatever steps needed to be taken and default arguments needed to be used to achieve it.
   * Target `uninstall` uninstalls the project of the commit automatically. The project's configuration files are not removed to make updating the project using gim possible.
3. The status of installed/uninstalled project is determined by existence of an executable file with the same name as the Git project name located in any directory defined by the `$PATH` variable of the current user, where:
  * It supports at least `--version` or `-version` flag, which returns version of currently installed project and it exactly matches project's Git tag names. When the `--version` flag is not supported, it exits with non-zero exit code to indicate to try the other flag.
4. If an annotated tag's commit has a README file with an install section, it contains a link to the gim project website, `https://gitlab.com/dominiksalvet/gim`, somewhere at the section's beginning. This could be as easy as: "This project is [gim](https://gitlab.com/dominiksalvet/gim) compliant."

## Compliance since a certain version

To **allow existing projects to adapt** to gim, a Git project is also **gim compliant** if it meets all of the [previous rules](#rules) and the following rules **since it's certain version**:

1. Every annotated tag's commit has a README file with an install section and contains the information about gim compliance since a certain version somewhere at the section's beginning. Together with the 4th point of the previous rules it could look like that: "This project is [gim](https://gitlab.com/dominiksalvet/gim) compliant since version \<version\>."

---

## Suggestions

**Suggestions in this section are optional to follow** and they do not affect the gim compliance. These are the suggestions:

1. In a *makefile* of every annotated tag's commit checks whether a project is installed before allowing to install or uninstall it using the *makefile* to prevent problems while using only `make` tool without gim, which does the check automatically.
2. When the Git project's software requires root permissions, a user is informed about this fact by the software if they are not given.
3. The executable file named as the Git project do not require root permissions for returning its version using `--version` or `-version` flag.
