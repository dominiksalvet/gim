# Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html). Individual releases can be obtained using the [tags](https://gitlab.com/dominiksalvet/gim/tags). Changes between their files can be viewed using the [compare](https://gitlab.com/dominiksalvet/gim/compare).

## Unreleased

The changes not yet present in any release are listed in this section.

## 3.1.1 (2018-09-12)

### Fixed

* Fixed error `logged_user: command not found`.
* Look for project names in latest master branch commit instead of the latest commit that is tagged with an annotated tag to make changing Git repository name between two releases possible.

## 3.1.0 (2018-09-12)

### Added

* The support for renaming gim compliant Git projects has been added.
* When a gim compliant Git project changes its name, configuration files are copied automatically during the update process if they are placed in */etc/\<project\>/* or *~/.config/\<project\>/*.

### Fixed

* Create the */etc/bash_completion.d/* directory if it doesn't exist.

## 3.0.0 (2018-09-09)

### Added

* Intelligent removing cache using the `-autoclean` options. This will remove only cached Git repositories for projects that aren't installed on the system.

### Changed

* The `-clear-cache` options has been changed to `-clean`.
* The project's Git URL doesn't have to end with `.git`.
* Checking for root permissions and downloading a given Git repository are not performed until necessary.

## 2.0.0 (2018-09-08)

### Added

* Support for TAB completion for bash shell.

### Removed

* Removed support for installation of a project to a user's directory. Root permissions are now required.

## 1.2.0 (2018-09-05)

### Changed

* Created *install* and *uninstall* scripts that are called by appropriate targets from *makefile*.
* Git commands are now quiet, unless they are downloading some content and reporting the progress.
* Git URL validation has been improved and amount of accepted Git URLs has been increased.

### Fixed

* Gim don't accept Git URLs whose only a subpart meet a valid Git URL format.

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
* Unnecessary actions are not performed anymore. E.g., using 'update' when the project is fully updated will not invoke the uninstall-and-install routine.
* After an action of Git URL's project, gim verifies that the installation is in the appropriate state.
