# gim

[![reuse compliant](https://reuse.software/badge/reuse-compliant.svg)](https://reuse.software/)
[![standard-readme compliant](https://img.shields.io/badge/readme_style-standard-brightgreen.svg)](https://github.com/RichardLitt/standard-readme)
[![FHS 3.0](https://img.shields.io/badge/FHS-3.0-2f7ba6.svg)](https://wiki.linuxfoundation.org/lsb/fhs)
[![keep a changelog](https://img.shields.io/badge/keep-a_changelog-f15d34.svg)](https://keepachangelog.com/en/1.0.0/)
[![semver 2.0.0](https://img.shields.io/badge/semver-2.0.0-blue.svg)](https://semver.org/)
[![gim compliant](https://img.shields.io/badge/gim-compliant-571997.svg)](https://gitlab.com/dominiksalvet/gim)

> A simple installation manager for your Git projects.

Wouldn't it be great to **install and update** your favorite Git projects like this?

```sh
gim install <url>
```

And when they are no longer needed, **uninstall** them that way?

```sh
gim uninstall <url>
```

If you are in, then gim comes in pretty handy. All you need is a URL of a Git project and gim will do the rest. With respect to gim's flexibility, there are a lot of compatible projects around even without being adapted to gim at all.

---

**Are you a developer** of a Git project? Do you want to **automate its distribution** with gim? There are high chances that your project is already set up. The official rules of **gim compliance** are stated in the [*RULES.md*](RULES.md) file. Once your project is gim compliant, it can be installed, updated or uninstalled using gim by end users. And don't forget about [this badge](#badge)!

> Gim is the place where development is distribution.

## Table of Contents

* [Install](#install)
* [Usage](#usage)
  * [Examples](#examples)
* [Badge](#badge)
* [Contributing](#contributing)
* [License](#license)

## Install

Installation of gim itself must be done manually; **copy-paste the following commands** into a terminal emulator and execute them.

* **Global installation** can perform global installations and local installations (by any user) of Git projects.

```sh
mkdir -p ~/Downloads/gim/ && # create a directory for gim repository
cd ~/Downloads/gim/ && # go to the created directory
git clone https://gitlab.com/dominiksalvet/gim.git . && # clone gim repository
git checkout -q "$(git describe --abbrev=0)" && # use the latest gim version
sudo make install && # install gim, requires root permissions
echo 'SUCCESS' # print a message if everything succeeded
```

* **Local installation** generally can perform only local installations (by current user) of Git projects.

```sh
mkdir -p ~/Downloads/gim/ && # create a directory for gim repository
cd ~/Downloads/gim/ && # go to the created directory
git clone https://gitlab.com/dominiksalvet/gim.git . && # clone gim repository
git checkout -q "$(git describe --abbrev=0)" && # use the latest gim version
make install && # install gim, does not require root permissions
echo 'SUCCESS' # print a message if everything succeeded
```

After success:

* The *~/Downloads/gim* directory can be manually removed.
* Gim will be installed on your system and you can **use gim to update itself** or even uninstall itself.

---

Note that uninstalling gim will not remove its created configuration and **will not uninstall** any project installed by gim. However, you will probably need to install gim back to easily manage those projects.

## Usage

Gim generally **can perform both local and global installations**. Global installation will be performed in case gim has root permissions (e.g., it was executed using `sudo`), local installation will be performed otherwise.


**Install or update** a Git project:

```sh
gim install <url>
```

**Uninstall** a Git project:

```sh
gim uninstall <url>
```

Show **status** of a Git project:

```sh
gim status <url>
```

---

Note that gim manages one database for global installations and one database for each active user for local installations. And so when gim is running with root permissions, it will access **a different database** than running gim without them.

### Examples

1. We want to check if gim is installed globally. We will use:

```sh
sudo gim status gitlab.com/dominiksalvet/gim
```

2. We want to update gim, which is installed locally by current user. We will use:

```sh
gim install gitlab.com/dominiksalvet/gim
```

---

Also, there can be leading `https://` or trailing `.git` in the URLs. All those formats work equally.

## Badge

If your project is gim compliant, **you are allowed to use the following badge** in Markdown format as a sign of the gim compliance.

```
[![gim compliant](https://img.shields.io/badge/gim-compliant-571997.svg)](https://gitlab.com/dominiksalvet/gim)
```

Graphics form:

[![gim compliant](https://img.shields.io/badge/gim-compliant-571997.svg)](https://gitlab.com/dominiksalvet/gim)

## Contributing

See the [*CONTRIBUTING.md*](CONTRIBUTING.md) file for details.

## License

Licensing policy of this project is compliant with [REUSE Practices](https://reuse.software/practices/2.0/). Therefore, the license of a file of this project is determined by an [SPDX](https://spdx.org/) License Identifier or by the [*debian/copyright*](debian/copyright) file content.
