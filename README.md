# gim

[![gim ready](https://img.shields.io/badge/gim-ready-571997.svg)](https://gitlab.com/dominiksalvet/gim)
[![reuse compliant](https://reuse.software/badge/reuse-compliant.svg)](https://reuse.software/)
[![standard-readme compliant](https://img.shields.io/badge/readme_style-standard-brightgreen.svg)](https://github.com/RichardLitt/standard-readme)

> Simple installation manager for your Git projects.

Wouldn't it be great to **install and update** your favorite Git projects like this?

```
gim install <url>
```

And when they are no longer needed, **uninstall** them that way?

```
gim uninstall <url>
```

If you are in, then gim comes in pretty handy. All you need is a URL of a Git project and gim will do the rest. With respect to gim's flexibility, there are a lot of compatible projects around even without being adapted to gim at all.

---

**Are you a developer** of a Git project? Do you like the idea stated above? Then keep reading in the [Developer](#developer) section.

## Table of Contents

* [Install](#install)
* [Usage](#usage)
  * [Example](#example)
* [Developer](#developer)
  * [Badge](#badge)
* [Contributing](#contributing)
* [License](#license)

## Install

To **globally install gim**, copy-paste the following commands into a terminal emulator and execute them.

```sh
mkdir -p /tmp/gim/ && # create a temporary directory for gim repository
cd /tmp/gim/ && # go to the created directory
git clone https://gitlab.com/dominiksalvet/gim.git . && # clone gim repository
git checkout "$(git describe --abbrev=0)" && # use the latest gim version
sudo make install && # install gim, requires root permissions
echo 'SUCCESS' # print a message when everything succeeded
```

To **install gim locally**, remove `sudo` from the commands stated above and execute them.

---

From now on, you can use gim to update itself or even uninstall itself. If you decide to uninstall gim, it will not uninstall any project installed by gim. However, you will probably need to install gim back to manage those projects.

## Usage

**Install or update** a Git project:

```
gim install <url>
```

**Uninstall** a Git project:

```
gim uninstall <url>
```

Show **status** of a Git project:

```
gim status <url>
```

### Example

```
$ gim status gitlab.com/dominiksalvet/gim
[nothing] gitlab.com/dominiksalvet/gim -> 6.0.1

$ sudo gim status gitlab.com/dominiksalvet/gim
[old] gitlab.com/dominiksalvet/gim 6.0.0 -> 6.0.1

$ sudo gim install gitlab.com/dominiksalvet/gim
[update] gitlab.com/dominiksalvet/gim 6.0.1 <- 6.0.0

$ sudo gim status gitlab.com/dominiksalvet/gim
[latest] gitlab.com/dominiksalvet/gim 6.0.1
```

As demonstrated above, gim works with either global or local installations based on whether it is run with root permissions.

## Developer

You may use gim in your Git projects. Why?

* No gim-specific files required
* Easy-to-use for developers and users
* Global and local installations
* Delta updates
* POSIX-friendly environment

How? Meet the rules stated in the [*RULES.md*](RULES.md) file and your project will become gim ready. **Then users can use gim to manage it.**

Not sure? Try `gim status <url>` with the URL of your project - maybe it is already compatible.

### Badge

Gim ready projects work best with the following badge:

[![gim ready](https://img.shields.io/badge/gim-ready-571997.svg)](https://gitlab.com/dominiksalvet/gim)

Markdown:

```markdown
[![gim ready](https://img.shields.io/badge/gim-ready-571997.svg)](https://gitlab.com/dominiksalvet/gim)
```

## Contributing

Do you want to contribute? Do you have any questions? Then the [*CONTRIBUTING.md*](CONTRIBUTING.md) file is here for you.

## License

Licensing policy of gim is compliant with [REUSE Practices](https://reuse.software/practices/2.0/).

The preferred license is the **MIT License** as stated in the [*LICENSE.txt*](LICENSE.txt) file.
