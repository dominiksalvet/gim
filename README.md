# Git Installation Manager *(gim)*

> Install, uninstall or update Git projects in an easy and unified way with a single command.

Nearly every single hosted Git project needs to take different steps to being successfully installed, uninstalled or updated. That makes sense as requirements per project differ. However, very often an end user must to deal with those differences. And that does not make sense.

Therefore, the goal of this project is to make managing of Git projects easier for end users. Developing of those projects is not affected as long as it is in compliant with this project rules. The rules are as non-restrictive as possible.

## Install

To **automatically install the latest stable release** of this program, open a terminal emulator and use the following commands:

```sh
cd ~/Downloads/ && # change directory to the 'Downloads' directory
if cd gim/ 2>/dev/null; then # check if local repository exists
    git checkout master && # checkout the master for the pull command
    git pull && # get the most recent state of the repository
    git fetch --tags # in case of any release commit change
else
    git clone https://gitlab.com/dominiksalvet/gim.git && # clone it
    cd gim/ # and change directory to the downloaded repository
fi &&
git checkout "$(git describe --abbrev=0)" && # use the latest repository tag
sudo make install-deps && # install dependencies
sudo make install # install the program
```

After the installation, the *~/Downloads/gim* directory won't be required for the program to be working and so it can be removed.

---

If it is required to **automatically uninstall your current release** of this program, open a terminal emulator and use the following commands:

```sh
cd ~/Downloads/ && # change directory to the 'Downloads' directory
if cd gim/ 2>/dev/null; then # check if local repository exists
    git checkout master && # checkout the master for the pull command
    git pull && # get the most recent state of the repository
    git fetch --tags # in case of any release commit change
else
    git clone https://gitlab.com/dominiksalvet/gim.git && # clone it
    cd gim/ # and change directory to the downloaded repository
fi &&
git checkout "$(gim -version)" && # use the program version as a tag
sudo make uninstall # uninstall the program (it doesn't uninstall dependencies)
```

---

To **update the program**, uninstall it and install it again using the steps stated above.

## Contribute

See the [*CONTRIBUTING.md*](CONTRIBUTING.md) file for details.

## License

Licensing policy of this project is compliant with [REUSE Practices](https://reuse.software/practices/2.0/). Therefore, the license of a file of this project is determined by a [SPDX](https://spdx.org/) License Identifier or by the [*debian/copyright*](debian/copyright) file content.
