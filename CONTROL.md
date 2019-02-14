# Control

To control a Git repository using gim, create *gim* directory in the project directory containing files from the following list according to specific needs or requirements. These control files are always used from the most recent commit of the repository's master branch.

* *mirror-urls*
  * A list of **all URLs** that the repository is available on.
  * Has one item per line, its content ends with a newline character.
  * Useful when renaming a repository to stay available on both the old and the new URL; first create/update this file and then rename the repository itself.
* *unsupported-versions*
  * A list of repository's tag names whose commits are marked as not supported under gim and so gim will refuse to work with them.
  * Has one item per line, its content ends with a newline character.
  * **Mandatory for repositories that are gim compliant since a certain version.** In that case, it can be created using `git tag --list` before releasing the first version, which supports gim.
  * Also useful in case of a bad release; just add the version of the release to this file.

Furthermore, gim exports some environment variables to your makefile targets and associated scripts to provide a helpful information for their execution. Then, you can read the following variables in your makefile targets and associated scripts for branching like a normal variable.

* `INSTALLER`
  * Equal to `gim` and represents the used installer.
  * Useful when a different behavior is required when running makefile under gim and when running manually.
* `INSTALL_TYPE`
  * Equal either `global` or `local` and represents the installation type.
  * Global installation needs root permissions and local installation is going to be located somewhere in the user's home folder.
