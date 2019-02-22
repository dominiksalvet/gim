# Control

This file describes the ways to control gim-related issues in Git projects.

## Repository

To control gim's execution from a Git repository, create *gim* directory in the repository containing files from the following list according to specific needs or requirements. These control files are used from **the most recent commit** of the repository's master branch.

* *mirror-urls*
  * A list of **all URLs** that the repository is available on. Supported URL format is the same as for gim itself.
  * Has one item per line, its content ends with a newline character.
  * Useful when renaming a repository to stay available on both the old and the new URL as the same project for gim; first create/update this file and then rename the repository itself.
* *unsupported-versions*
  * A list of repository's tag names whose commits are marked as not supported under gim and gim will refuse to work with them.
  * Has one item per line, its content ends with a newline character.
  * Useful in case of a bad release or when a version is explicitly unsupported; just add the version of the release to this file.

## Environment variables

Furthermore, gim exports environment variables for all called makefile targets and scripts. It means that you can work with the following variables in your makefile targets and scripts like they were normal variables.

* `INSTALLER`
  * Equal to `gim` and represents the used installer.
  * Useful when a different behavior is required when running makefile targets or scripts under gim and when running them the other way, e.g., manually.

## Others

Additional tips and suggestions are listed below.

* Gim is performing a global operation if and only if it has root permissions. Your makefile targets and scripts are called with the same permissions. So you can easily check what type of operation is being executed and, e.g., set up appropriate directory paths.
