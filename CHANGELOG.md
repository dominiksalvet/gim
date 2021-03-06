# Changelog

All notable changes to gim will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and gim adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

The changes not yet present in any release are listed in this section.

### Added

* Travis CI is used for various checks during gim development.

## 7.1.0 (2019-05-21)

### Changed

* Gim no longer distinguishes between annotated tags and lightweight tags when choosing a preferred commit.
* Move from GitLab to GitHub.

## 7.0.0 (2019-04-23)

### Added

* Support for macOS has been added.
* New installers `cami` and `makei` are supported.

### Changed

* Installers are no longer part of the gim, they are modular and loadable during gim's execution now.
* Gim stores prefix for each installed project, so that uninstallation is performed correctly.
* Gim stores commit hash to database rather that an annotated tag name.
* Installation and uninstallation of gim respects values of `PREFIX` and `DB_DIR` variables.
* Installation of gim may safely modify `PATH` variable if gim binary path is not present.
* Gim project control files have been renamed; *gim/unsupported-versions* -> *gim/unsupported*, *gim/mirror-urls* -> *gim/mirrors*.

### Removed

* Gim no longer delivers suggested build directory to Git projects. They can be built in the repository directory itself.
* Command `version` has been removed. The current gim's version is included in output of the `about` command.
* Option `-fail-on-prompt` has been removed. Use an appropriate Git environment variable to get the same effect.
* Option `-force` has been renamed to `-f` to be more POSIX-friendly.

## 6.0.1 (2019-02-25)

### Fixed

* Obtaining of repository version always performs checkout of the master branch before its execution.

## 6.0.0 (2019-02-23)

### Added

* Gim manages its own database of installed programs in *status* file.
* Gim now exports environment variable `INSTALLER` equal to `gim` for all invoked installers to indicate used installation manager.
* Added support for RC files that set up gim's directory definitions. And so they are no longer hard-coded.
* Projects installed by gim can be installed locally. Gim has one global database and an additional one for each active user.
* Support for local installation of gim has been added.
* Installation and uninstallation scripts load current system configuration of gim from RC files during their execution.
* Added a basic installer support.

### Changed

* Option `-ignore-unsupported` has been renamed to `-force`.
* The format of status reports has been changed. A label concept has been established, which significantly distinguishes errors from normal status reports.
* Commands `-autoclean`, `-clean`, `-help`, `-about` and `-version` have been renamed to `autoclean`, `clean`, `help`, `about` and `version`.
* Gim project control files have been renamed; *gim/unsupported* -> *gim/unsupported-versions*, *gim/names* -> *gim/mirror-urls* (now stores mirror URLs instead of just names). The content of both files is separated by newlines rather than by spaces.

### Removed

* Previous installation management using `PATH` root's variable has been removed. Due to this change, it is required to uninstall all projects installed by gim, update gim to this version and then install them back. Phew, no more breaking changes like this one.

## 5.0.0 (2018-12-28)

### Added

* Option `-ignore-unsupported` has been added. It provides a way how to ignore the fact that a version of a gim compliant project is listed in *gim/unsupported* and so it allows gim to operate with those versions.

### Changed

* Gim no longer accepts arguments for make command. Instead, it supports multiple URL processing with a common action.

## 4.0.0 (2018-12-03)

### Added

* The result of gim internal callings of `<program> --version` or `<program> -version` (used to detect program's version) is being checked against available tags of the source Git repository during early checks to provide appropriate report.
* Option `-fail-on-prompt` has been added, which causes gim to fail if it requires user input.

### Changed

* The format of status reports is unified. It includes `latest`, `old`, `nothing`, `install`, `update`, `uninstall`, `incompatible`, `fail-install`, `fail-update` and `fail-uninstall` indicators.

### Fixed

* Fixed error reporting during cloning or fetching Git repository.
* Fixed possible way of getting gim cache into inconsistent state while not git-checking master branch before fetching updates.

### Removed

* Action `update` has been removed, action `install` can be used for installation as well as for update.

### Security

* All Git URL parts are now allowed to start only with an alphanumeric character or `_`. Then they can be followed only by alphanumeric characters, `_`, `-` or `.`. The parts are split by `/`.

## 3.4.0 (2018-11-08)

### Added

* Versions of a project that are not supported by gim can be listed in the *gim/unsupported* file.

### Changed

* Installation/uninstallation process of gim no longer prints make recipes before executing them.
* Structure of gim cache now also consider given hostname when being built. In extreme cases, it may be required to use `-clean` flag before further gim use.

### Fixed

* Remove untracked files and directories before working with a cached Git repository.

## 3.3.0 (2018-09-26)

### Added

* Support for `status` action, which prints whether a Git project is installed and updated.

### Changed

* The connection to a gim compliant project Git repository is established once instead of twice as before.
* In case of corrupted cached Git repository, an error is no longer reported. The repository will undertake hard reset to latest commit's state.
* The logo has been remastered.
* The gim color for a badge is now defined as `571997` in hexadecimal representation, darker purple color than used before.

### Fixed

* Once a Git repository is stored in gim cache, the Git URL for another operations with it no longer can contain an invalid URL ending with `<author>/<project>[.git]`.

## 3.2.0 (2018-09-24)

### Added

* A new project logo.

### Changed

* Add support for tab completion for Bash shell of all possible arguments.
* The project's Git URL does not have to start with `https://`. It will be added automatically.

### Removed

* Automatic configuration files copying has been removed as it is not always intended.

## 3.1.2 (2018-09-19)

### Fixed

* Finishing updating a gim compliant project will never create redundant directories with configuration files.

## 3.1.1 (2018-09-12)

### Fixed

* Fixed error `logged_user: command not found`.
* Look for project names in latest master branch commit instead of the latest commit that is tagged with an annotated tag to make changing Git repository name between two releases possible.

## 3.1.0 (2018-09-12)

### Added

* The support for renaming gim compliant Git projects has been added.
* When a gim compliant Git project changes its name, configuration files are copied automatically during the update process if they are placed in */etc/\<project\>/* or *~/.config/\<project\>/*.

### Fixed

* Create the */etc/bash_completion.d/* directory if it does not exist.

## 3.0.0 (2018-09-09)

### Added

* Intelligent removing cache using the `-autoclean` options. This will remove only cached Git repositories for projects that are not installed on the system.

### Changed

* The `-clear-cache` options has been changed to `-clean`.
* The project's Git URL does not have to end with `.git`.
* Checking for root permissions and downloading a given Git repository are not performed until necessary.

## 2.0.0 (2018-09-08)

### Added

* Support for tab completion for Bash shell.

### Removed

* Removed support for installation of a project to a user's directory. Root permissions are now required.

## 1.2.0 (2018-09-05)

### Changed

* Created *install* and *uninstall* scripts that are called by appropriate targets from *makefile*.
* Git commands are now quiet, unless they are downloading some content and reporting the progress.
* Git URL validation has been improved and amount of accepted Git URLs has been increased.

### Fixed

* Gim does not accept Git URLs whose only a subpart meet a valid Git URL format.

### Security

* Git URLs with an author name or a project name defined as `.` or `..` are refused as it can cause accessing wrong directory instead of the cache directory.
* Initialize variables to an empty string when they have been read before assigning.

## 1.1.2 (2018-09-04)

### Changed

* Gim now includes the given project name in reports as much as possible.

## 1.1.1 (2018-08-27)

### Fixed

* When checking if a project is installed, it is also checked whether a project program file is executable.
* Git messages about `detached HEAD` are suppressed as irrelevant. Nevertheless, information about `HEAD` change will be shown.

## 1.1.0 (2018-08-26)

### Added

* Support for passing arguments for internally used `make` commands by `gim` commands.

### Changed

* The current version of locally installed project is asked only when necessary.

### Fixed

* Detection of gim installations performed in past without root permission while running the `gim` command with root permissions now.

## 1.0.1 (2018-08-24)

### Fixed

* Prevent owning cache directories by the root user as then it would be impossible to use the `-clear-cache` flag by a standard user.
* Remove question about write-protected file while uninstalling the project.
* Check first for existence of the `--version` flag and then the `-version` flag. Otherwise, the `-version` flag could be interpreted by many programs as `-v -e -r -s -i -o -n` parameters.

## 1.0.0 (2018-08-24)

### Added

* The option `-clear-cache` has been added to clear cached Git repositories locally stored.
* Support for programs reporting it's version with the `--version` flag.

### Changed

* Check if a given Git URL's project has at least one commit tagged.
* Unnecessary actions are not performed anymore. E.g., using `update` when the project is fully updated will not invoke the uninstall-and-install routine.
* After an action of Git URL's project, gim verifies that the installation is in the appropriate state.
