# Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html). Individual releases can be obtained using the [tags](https://gitlab.com/dominiksalvet/gim/tags). Changes between their files can be viewed using the [compare](https://gitlab.com/dominiksalvet/gim/compare).

## Unreleased

The changes not yet present in any release are listed in this section.

### Added

* When updating a project, gim checks whether installed version is the same as the latest version of the Git repository to prevent uninstall-and-install routine.
* The option `-clear-cache` has been added to clear cached Git repositories locally stored.
* Check if a given Git URL's project has at least one commit tagged.
* Unnecessary actions are not performed anymore. E.g., using 'update' when the project is fully updated will not invoke the uninstall-and-install routine.
