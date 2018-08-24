# Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html). Individual releases can be obtained using the [tags](https://gitlab.com/dominiksalvet/gim/tags). Changes between their files can be viewed using the [compare](https://gitlab.com/dominiksalvet/gim/compare).

## Unreleased

The changes not yet present in any release are listed in this section.

### Changed

* The current version of locally installed project is asked only when necessary.

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
