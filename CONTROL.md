# Control

To control a Git repository using gim, create *gim* directory in the project directory containing files from the following list according to specific needs or requirements. These control files are always used from the most recent commit of the repository's master branch.

* *mirror-urls*
  * A list of **all URLs** that the repository is available on.
  * Has one item per line, its content ends with a newline character.
  * Useful when renaming a repository to stay available on both the old and the new URL; first create/update this file and then rename the repository.
* *unsupported-versions*
  * A list of repository's tag names whose commits are marked as not supported under gim and so gim will refuse to work with them.
  * Has one item per line, its content ends with a newline character.
  * **Mandatory for repositories that are gim compliant since a certain version.** It can be created using `git tag --list` before releasing the first version, which supports gim.
  * Useful in case of a bad release; just add the version of the release to this file.
