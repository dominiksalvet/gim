# Git Installation Manager *(gim)*

> Install, update or uninstall Git projects in an easy way with a single command.

Nearly every hosted **Git project needs to take different steps to being successfully installed, uninstalled or updated**. That makes sense as requirements per project differ. However, very often an **end user must deal with those differences** during reading an exhaustive README file to get out of it how to install the project. And that does not make sense.

Therefore, the goal of this project is to **make managing Git projects as easy as possible for end users**. Projects that support this way of installation management are marked as **gim compliant** and once they are marked so, they **must meet the rules** stated in the [*RULES.md*](RULES.md) file. These rules are as least restrictive as possible to be also friendly to the projects developers.

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
git clone https://gitlab.com/dominiksalvet/gim.git && # clone gim repository
cd gim/ && # change directory to the cloned repository
git checkout -q "$(git describe --abbrev=0)" && # use the latest tag
sudo make install && # install gim
echo 'SUCCESS' # print a message if everything succeeded
```

After the steps above are successfully executed:

* Gim will be installed on your system and in case of requiring to **update gim** or **uninstall gim**, you can **use gim itself for these operations** as demonstrated on an example in the [Uninstallation](#uninstallation) section below.
* The *~/Downloads/gim* directory won't be required anymore for the program to be working and so it can be manually removed.

## Usage

### Installation

To **automatically install the latest stable release** of a gim compliant project, use the following command:

```sh
sudo gim install <git_url>
```

### Uninstallation

To **automatically uninstall your current release** of a gim compliant project, use the following command:

```sh
sudo gim uninstall <git_url>
```

---

For example, if you want to **uninstall gim itself**, you can use the following command:

```sh
sudo gim uninstall https://gitlab.com/dominiksalvet/gim.git
```

You may want to remove gim's cached Git repositories as well if you haven't planned to install and use gim again. You can do it by executing the `gim -clean` command before gim will be uninstalled. Note that **in no case any program installed by gim will be uninstalled** after following those steps. These programs must be uninstalled directly by gim's `uninstall` action or using their makefiles if required.

Once gim is uninstalled, the easiest way to install it again is to use the steps described in the [Install](#install) section.


### Update

To **automatically update to the latest stable release** a gim compliant project, use the following command:

```sh
sudo gim update <git_url>
```

## Badge

If **your project is gim compliant** and so it meets the rules stated in the [*RULES.md*](RULES.md) file, **you can use the following badge** in Markdown format in connection with the project as a sign of a gim compliance:

```
[![gim compliant](https://img.shields.io/badge/gim-compliant-b045ff.svg)](https://gitlab.com/dominiksalvet/gim)
```

Graphics form:

[![gim compliant](https://img.shields.io/badge/gim-compliant-b045ff.svg)](https://gitlab.com/dominiksalvet/gim)

## Contribute

See the [*CONTRIBUTING.md*](CONTRIBUTING.md) file for details.

## License

Licensing policy of this project is compliant with [REUSE Practices](https://reuse.software/practices/2.0/). Therefore, the license of a file of this project is determined by a [SPDX](https://spdx.org/) License Identifier or by the [*debian/copyright*](debian/copyright) file content.
