# Rules

Gim operates only with commits from the master branch of Git projects and prefers them in the following order: latest annotated tag's commit, latest lightweight tag's commit and latest commit.

A Git project is **gim ready** if gim's preferred commit can be installed and uninstalled using an installer stated in the [*INSTALLERS.md*](INSTALLERS.md) file.

If a Git project needs advanced control, it respects a control policy stated in the [*CONTROL.md*](CONTROL.md) file.
