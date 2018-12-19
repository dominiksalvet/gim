# Git Installation Manager *(gim)*

> Install, update or uninstall Git projects easily with a single command.

What about to **install and update Git projects** like this?

```sh
sudo gim install <url>
```

And **uninstall them** like this?

```sh
sudo gim uninstall <url>
```

That is exactly what gim allows you to do with Git projects marked as gim compliant. No more reading through an exhaustive README file to get out of it how to install, update or uninstall one specific project if stated at all. All you need is project's Git URL and gim will do the rest.

---

**Are you a developer** of a Git project? Do you want to **distribute your project with gim**? It is really simple and also there is a chance that your project is already gim compliant without any further work. All you need is `git` and `make` software. Once your project is compliant with rules stated in the [*RULES.md*](RULES.md) file, it will become gim compliant and gim can be used to install, update or uninstall it by end users. **Distribution of Git projects can't be easier.**

> Gim is the place where development is distribution.

## Table of Contents

* [Install](#install)
* [Usage](#usage)
* [Badge](#badge)
* [Contributing](#contributing)
* [License](#license)

## Install

Installation of gim itself must be done manually, just **copy-paste the following commands** into a terminal emulator and execute them:

```sh
mkdir -p ~/Downloads/gim/ && # create a directory for gim repository
cd ~/Downloads/gim/ && # go to the created directory
git clone https://gitlab.com/dominiksalvet/gim.git . && # clone gim repository
git checkout -q "$(git describe --abbrev=0)" && # use the latest gim version
sudo make install && # install gim
echo 'SUCCESS' # print a message if everything succeeded
```

After success:

* The *~/Downloads/gim* directory can be manually removed.
* Gim will be installed on your system and you can **use it to update itself** or even uninstall itself.

---

Note that uninstalling gim will not cause projects installed by gim to be uninstalled as well. However, without gim you will need to update or uninstall those projects manually.

## Usage

To **install or update** a gim compliant project, use the following command:

```sh
sudo gim install <url>
```

To **uninstall** it, use this command:

```sh
sudo gim uninstall <url>
```

If you want to know the installation **status** of a project, use that command:

```sh
sudo gim status <url>
```

---

For example, if you want to get installation status about gim, you can do it using the following command:

```sh
sudo gim status https://gitlab.com/dominiksalvet/gim.git
```

Also, you can omit leading `https://`, trailing `.git` or both from the URL. All those formats work equally.

## Badge

If **your project is gim compliant** and so it meets rules stated in the [*RULES.md*](RULES.md) file, **you are allowed to use the following badge** in Markdown format in connection with the project as a sign of a gim compliance:

```
[![gim compliant](https://img.shields.io/badge/gim-compliant-571997.svg)](https://gitlab.com/dominiksalvet/gim)
```

Graphics form:

[![gim compliant](https://img.shields.io/badge/gim-compliant-571997.svg)](https://gitlab.com/dominiksalvet/gim)

## Contributing

See the [*CONTRIBUTING.md*](CONTRIBUTING.md) file for details.

## License

Licensing policy of this project is compliant with [REUSE Practices](https://reuse.software/practices/2.0/). Therefore, the license of a file of this project is determined by a [SPDX](https://spdx.org/) License Identifier or by the [*debian/copyright*](debian/copyright) file content.
