# Git Installation Manager *(gim)*

> Install, uninstall or update Git projects in an easy way with a single command.

Nearly every hosted **Git project needs to take different steps to being successfully installed, uninstalled or updated**. That makes sense as requirements per project differ. However, very often an **end user must deal with those differences** during reading an exhaustive README file to get out of it how to install the project. And that does not make sense.

Therefore, the goal of this project is to **make managing Git projects as easy as possible for end users**. Projects that support this way of installation management are marked as **gim compliant** and once they are marked so, they **must meet the rules** stated in the [RULES.md](RULES.md) file. These rules are as least restrictive as possible to be also friendly to the projects developers.

---

This project is not a package manager, it is an installation manager. **It's meant to be as simple as possible.**

## Table of Contents

* [Install](#install)
* [Usage](#usage)
  * [Installation](#installation)
  * [Uninstallation](#uninstallation)
  * [Update](#update)
* [Badge](#badge)
* [Contribute](#contribute)
* [License](#license)

## Install

If you haven't installed this project yet, to **automatically install the latest stable release** of it, open a terminal emulator and use the following commands:

```sh
cd ~/Downloads/ && # change directory to the 'Downloads' directory
git clone https://gitlab.com/dominiksalvet/gim.git && # clone it
cd gim/ && # change directory to the cloned repository
git checkout "$(git describe --abbrev=0)" && # use the latest repository tag
sudo make install && # install the program
cd ~/Downloads/ && # change directory to the 'Downloads' directory again
rm -rf gim/ && # remove cloned repository (can be omitted if you want)
echo 'SUCCESS' # print a message if everything succeeded
```

After the steps above are successfully executed, gim will be installed on your system and in case of requiring to **uninstall gim** or **update gim**, you can **use gim itself for these operations** as shown in the [Usage](#usage) section below.

## Usage

### Installation

To **automatically install the latest stable release** of a gim compliant project, use the following command:

```sh
gim install <git_url>
```

### Uninstallation

To **automatically uninstall your current release** of a gim compliant project, use the following command:

```sh
gim uninstall <git_url>
```

For example, if you want to **uninstall gim itself**, you can use the following command:

```sh
sudo gim uninstall https://gitlab.com/dominiksalvet/gim.git
```

You may want to remove gim's cached Git repositories as well if you haven't planned to install gim again. You can do it by executing the `gim -clear-cache` command before gim is uninstalled. Note that **in no case any program installed by gim will be uninstalled** after following those steps. These programs must be uninstalled directly by gim's `uninstall` action if required.

Once gim is uninstalled and its cache has been cleared, it is required to use the steps described in the [Install](#install) section in case to install it again.

---

Note that root permissions are not required for every project, gim also **supports installation without root permissions** to a user directory. This decision is exclusively up to the project developer as long as the project is gim compliant.

### Update

To **automatically update to the latest stable release** a gim compliant project, use the following command:

```sh
gim update <git_url>
```

## Badge

If **your project is gim compliant** and so it meets the rules stated in the [RULES.md](RULES.md) file, **you can use the following badge** in Markdown format in connection with the project as a sign of a gim compliance:

```
[![gim compliant](https://img.shields.io/badge/gim-compliant-b045ff.svg)](https://gitlab.com/dominiksalvet/gim)
```

Graphics form:

[![gim compliant](https://img.shields.io/badge/gim-compliant-b045ff.svg)](https://gitlab.com/dominiksalvet/gim)

## Contribute

See the [*CONTRIBUTING.md*](CONTRIBUTING.md) file for details.

## License

Licensing policy of this project is compliant with [REUSE Practices](https://reuse.software/practices/2.0/). Therefore, the license of a file of this project is determined by a [SPDX](https://spdx.org/) License Identifier or by the [*debian/copyright*](debian/copyright) file content.
