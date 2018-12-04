# Rules

A Git project is **gim compliant** if an associated repository is gim compliant. A Git repository is **gim compliant** if it meets all following rules applied on its master branch. A Git repository is **gim compliant since a certain version** if it meets all following rules applied on its master branch since an associated annotated tag has been created.

1. It has at least one annotated tag.
2. An annotated tag can be removed only when being immediately recreated with the same name while its commit **keeps the same functionality** as the original one.
3. Every annotated tag's commit has a *makefile* containing the following targets:
   * `install` - installs dependencies and then the project of the commit.
   * `uninstall` - uninstalls the project of the commit while **keeping configuration files and dependencies**.
4. Once executed any of make targets stated in the previous paragraph, its execution meets the target description and **does not involve any user interaction**. Building appropriate source files and delivering suitable default arguments are expected.
5. Whether the project is installed or not is determined by existence of an executable file (also called the agent) located in a directory defined by `$PATH` variable of the root user.
6. The agent's name is equal to repository name part of the used URL if *gim/names* file is not present in **the most recent state** of the project's repository. Otherwise, the name of the agent is equal to a name listed in *gim/names* file.
7. Once *gim/names* file is created in **the most recent state** of the project's repository, it cannot be removed and it meets all following rules:
   * It contains **all agent names** with which the project has been distributed including the one, which is going to take place in the following distribution.
   * All names are listed at the first line and separated by spaces.
8. If renaming the agent or the project's repository is required, create *gim/names* file containing **the following distribution agent name**. If any agents have been distributed so far, add their names to *gim/names* file as well. **Propagate these changes to the repository** and then the rest can be done in no particular order.
9. The agent supports at least `--version` or `-version` argument, which outputs the version of the associated installed project and **it exactly matches a project's Git tag name**. If `--version` is not supported, it exits with non-zero exit code.
10. If *gim/unsupported* file is present in **the most recent state** of the project's repository, then:
    * It contains all annotated tag names, which are marked as unsupported for gim. As long as they are listed here and an option allowing gim to operate with those listed unsupported versions is not delivered as an argument, gim will refuse to work with them. This could be particularly useful while adapting to gim since a certain version.
    * Regardless of its content, the most recent annotated tag name is **always supported**.
    * All names are listed at the first line and separated by spaces.
