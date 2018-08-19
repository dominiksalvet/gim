# Git Installation Manager *(gim)*

> Install, uninstall or update Git projects in an easy and unified way with a single command.

Nearly every hosted Git project needs to take different steps to being successfully installed, uninstalled or updated. That makes sense as requirements per project differ. However, very often an end user must deal with those differences during reading an exhaustive README file to get out from it how to install the project. And that does not make sense.

Therefore, the goal of this project is to make managing of Git projects easier for end users. Development of those projects must be gim compliant as stated in the [RULES.md](RULES.md) file. The rules are as non-restrictive as possible to affect the development as little as possible.

## Table of Contents

* [Install](#install)
* [Usage](#usage)
* [Badge](#badge)
* [Contribute](#contribute)
* [License](#license)

## Install

To **automatically install the latest stable release** of this program, open a terminal emulator and use the following commands:

```sh
cd ~/Downloads/ && # change directory to the 'Downloads' directory
if cd gim/ 2>/dev/null; then # if local repository exists
    git checkout master && # checkout the master branch for the pull command
    git pull && # get the most recent state of the repository
    git fetch --tags # in case of any tag change
else # if local repository doesn't exist
    git clone https://gitlab.com/dominiksalvet/gim.git && # clone it
    cd gim/ # and change directory to the downloaded repository
fi &&
git checkout "$(git describe --abbrev=0)" && # use the latest repository tag
sudo make install # install the program
```

After the installation, the *~/Downloads/gim* directory won't be required for the program to be working and so it can be removed.

---

If it is required to **automatically uninstall your current release** of this program, open a terminal emulator and use the following commands:

```sh
cd ~/Downloads/ && # change directory to the 'Downloads' directory
if cd gim/ 2>/dev/null; then # if local repository exists
    git checkout master && # checkout the master branch for the pull command
    git pull && # get the most recent state of the repository
    git fetch --tags # in case of any tag change
else # if local repository doesn't exist
    git clone https://gitlab.com/dominiksalvet/gim.git && # clone it
    cd gim/ # and change directory to the downloaded repository
fi &&
git checkout "$(gim -version)" && # use the program version as a tag
sudo make uninstall # uninstall the program
```

---

To **automatically update the program to it's latest stable release**, open a terminal emulator and use the following commands:

```sh
cd ~/Downloads/ && # change directory to the 'Downloads' directory
if cd gim/ 2>/dev/null; then # if local repository exists
    git checkout master && # checkout the master branch for the pull command
    git pull && # get the most recent state of the repository
    git fetch --tags # in case of any tag change
else # if local repository doesn't exist
    git clone https://gitlab.com/dominiksalvet/gim.git && # clone it
    cd gim/ # and change directory to the downloaded repository
fi &&
git checkout "$(gim -version)" && # use the program version as a tag
sudo make uninstall # uninstall the program
git checkout "$(git describe --abbrev=0)" && # use the latest repository tag
sudo make install # install the program again
```

## Usage

To **automatically install the latest stable release** of a gim compliant project, use the following command:

```sh
gim install <url>
```

To **automatically uninstall your current release** of a gim compliant project, use the following command:

```sh
gim uninstall <url>
```

To **automatically update a gim compliant project to it's latest stable release**, use the following command:

```sh
gim update <url>
```

## Badge

If your project is gim compliant and so it meets rules stated in the [RULES.md](RULES.md) file, you can use the following badge in Markdown format in connection with the project as a sign of a gim compliance:

```
[![gim compliant](https://img.shields.io/badge/gim-compliant-b74cff.svg)](https://gitlab.com/dominiksalvet/gim)
```

## Contribute

See the [*CONTRIBUTING.md*](CONTRIBUTING.md) file for details.

## License

Licensing policy of this project is compliant with [REUSE Practices](https://reuse.software/practices/2.0/). Therefore, the license of a file of this project is determined by a [SPDX](https://spdx.org/) License Identifier or by the [*debian/copyright*](debian/copyright) file content.
