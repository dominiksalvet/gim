# Control

This file describes how to control gim from Git projects.

## Repository

To **control gim directly from latest commit** of Git repository's master branch, create *gim* directory containing files from the following list based on your needs:

* *mirrors*
  * A list of **all URLs** that are interpreted as the same project.
  * Has one item per line.
* *unsupported*
  * A list of tag names whose commits are marked as unsupported.
  * Has one item per line.

## Environment variables

Gim exports the following environment variables for all executables of Git projects it calls:

* `INSTALLER`
  * Equals to `gim`.
