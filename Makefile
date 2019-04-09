#-------------------------------------------------------------------------------
# Copyright 2018-2019 Dominik Salvet
# SPDX-License-Identifier: MIT
# https://gitlab.com/dominiksalvet/gim
#-------------------------------------------------------------------------------
# DESCRIPTION:
#   This file represents a makefile for gim. It support both the installation
#   and the uninstallation of gim. It also respects some macro assignments.
#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------
# DEFINITIONS
#-------------------------------------------------------------------------------

.POSIX: # this file should be processed as a POSIX makefile
.SILENT: # do not print the lines that are being executed

# environment definitions
ECHO = echo

# directory definitions
GIM_DIR = .

#-------------------------------------------------------------------------------
# TARGETS
#-------------------------------------------------------------------------------

all: # there is no building required

install:
	'$(GIM_DIR)'/make/install '$(GIM_DIR)'

uninstall:
	'$(GIM_DIR)'/make/uninstall '$(GIM_DIR)'

help:
	$(ECHO) 'USAGE:'
	$(ECHO) '  make [TARGET...] [MACRO=VALUE...]'
	$(ECHO)
	$(ECHO) 'TARGET:'
	$(ECHO) '  all        do nothing (default)'
	$(ECHO) '  install    install gim'
	$(ECHO) '  uninstall  uninstall gim'
	$(ECHO) '  help       show this help'
	$(ECHO)
	$(ECHO) 'MACRO:'
	$(ECHO) '  PREFIX     installation prefix'
	$(ECHO) '  INSTALLER  installer name (caller)'
	$(ECHO) '  DB_DIR     installer database directory'
