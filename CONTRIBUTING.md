# Contributing

The development of gim is published on [this website](https://gitlab.com/dominiksalvet/gim) and **everyone is welcome to contribute**. Here is described how.

## Create a new installer

An installer is a shell script module that implements a specific method to install and uninstall projects. Gim uses those installers to implement installation and uninstallation of Git projects. Every installer meets the following rules:

1. It defines `can_install`, `install`, `can_uninstall` and `uninstall` functions.
2. Function `can_install` decides whether a project in the current directory can be installed.
3. Function `can_uninstall` decides whether a project in the current directory can be uninstalled.
4. Function `install` installs a project in the current directory to an absolute path prefix given as the first parameter.
5. Function `uninstall` uninstalls a project in the current directory from an absolute path prefix given as the first parameter.
6. Names of all other functions and all variables begin with an `i_` prefix.

If you want to create a new installer, follow steps described in the [Suggestions](#suggestions) section to get in touch with a gim developer. Then follow steps described in the [Merge requests](#merge-requests) section and update the [*INSTALLERS.md*](INSTALLERS.md) file based on the priority of your installer. **Then gim starts to use your installer.** You may also want to take a look at source code of already implemented installers in the [*lib/gim/installers*](lib/gim/installers) directory.

## Suggestions

If you have any suggestions (or questions) about the development of gim, follow these steps:

1. Make sure the same suggestion has not been already reported in [issues](https://gitlab.com/dominiksalvet/gim/issues).
2. Open a [new issue](https://gitlab.com/dominiksalvet/gim/issues/new).
3. In the issue, try to provide as much relevant information as possible.

## Merge requests

Except for merge requests with bug fixes, every merge request must be preceded by creating an issue as described in the [previous section](#suggestions) and must be approved by a gim developer. Then continue as described below:

1. Fork gim.
2. Create a new branch with a meaningful name.
3. Make your changes in the branch.
4. Add notable changes to the [*CHANGELOG.md*](CHANGELOG.md) file.
5. Make sure **all changes are POSIX-friendly and consistent** with used formatting and conventions.
6. Push all your changes to the branch.
7. Submit a [new merge request](https://gitlab.com/dominiksalvet/gim/merge_requests/new) to the `master` branch.
8. In the merge request, provide a clear description of the problem and its solution.
9. In the merge request, provide relevant issue numbers if any exist.

## License

By contributing, you agree that your contributions will be licensed under the same license as the affected files. In case of creating a new file, choose the most appropriate license with respect to gim [licensing policy](README.md#license) and the type of the created file.
