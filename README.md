# gim

> A simple smart Git-based installation manager.

What about to **install and update** your favorite Git projects like this?

```sh
gim install <url>
```

And when they are no longer needed, **uninstall** them that way?

```sh
gim uninstall <url>
```

If you are in, then gim comes pretty handy. No more reading through an exhaustive README file to get out of it how to install, update or uninstall a specific project if stated at all. All you need is a Git URL of a compatible project and gim will do the rest. And trust me, there are a lot of compatible projects thanks to the flexibility of gim.

---

**Are you a developer** of a Git project? Do you want to **automate its distribution** with gim? It is easier than you would think. There are also high chances that your project is already set up. The official rules for a Git project to be **gim compliant** are stated in the [*RULES.md*](RULES.md) file. Once your project is gim compliant, it can be installed, updated or uninstalled using gim by end users. And don't forget about a [badge](#badge)!

> Gim is the place where development is distribution.

## Table of Contents

* [Install](#install)
* [Usage](#usage)
* [Badge](#badge)
* [Contributing](#contributing)
* [License](#license)

## Install

Installation of gim itself must be done manually; just **copy-paste appropriate commands** stated below into a terminal emulator based on the desired type of installation and execute them. 

* **Global installation** can perform both global and local installations (by any user) of Git projects.

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
make install && # install gim, does not required root permissions
echo 'SUCCESS' # print a message if everything succeeded
```

After success:

* The *~/Downloads/gim* directory can be manually removed.
* Gim will be installed on your system and you can **use gim to update itself** or even uninstall itself.

---

Note that uninstalling gim will not remove its created configuration and **will not cause** projects installed by gim to be uninstalled as well. However, you will probably need to install gim back to easily manage those projects.

## Usage

Gim generally **can perform both local and global installations**. Global installation will be performed in case gim has root permissions (e.g., it was executed using `sudo`), local installation will be performed otherwise.


To **install or update** a Git project, use the following command:

```sh
gim install <url>
```

To **uninstall** it, use this command:

```sh
gim uninstall <url>
```

If you want to know the installation **status** of a Git project, use that command:

```sh
gim status <url>
```

---

Note that gim manages one database for global installations and one database for each active user for local installations. And so when gim is running with root permissions, it will access **a different database** than running gim without them.

### Example

For illustration, we want to get an installation status of gim itself from the global database (i.e., check if gim is installed globally). It can be done using the following command.

```sh
sudo gim status gitlab.com/dominiksalvet/gim
```

Also, there can be leading `https://` or trailing `.git` in the URL. All those formats work equally.

## Badge

If **your project is gim compliant** and so it meets rules stated in the [*RULES.md*](RULES.md) file, **you are allowed to use the following badge** in Markdown format in connection with the project as a sign of the gim compliance.

```
[![gim compliant](https://img.shields.io/badge/gim-compliant-571997.svg)](https://gitlab.com/dominiksalvet/gim)
```

Graphics form:

[![gim compliant](https://img.shields.io/badge/gim-compliant-571997.svg)](https://gitlab.com/dominiksalvet/gim)

## Contributing

See the [*CONTRIBUTING.md*](CONTRIBUTING.md) file for details.

## License

Licensing policy of this project is compliant with [REUSE Practices](https://reuse.software/practices/2.0/). Therefore, the license of a file of this project is determined by an [SPDX](https://spdx.org/) License Identifier or by the [*debian/copyright*](debian/copyright) file content.
