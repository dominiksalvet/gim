#-------------------------------------------------------------------------------
# Copyright 2018 Dominik Salvet
# SPDX-License-Identifier: MIT
# https://gitlab.com/dominiksalvet/gim
#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------
# DEFINITIONS
#-------------------------------------------------------------------------------

# environment configuration
SHELL := /bin/sh
ECHO := echo
SED := sed
COLUMN := column

# directory definitions
BUILD_DIR := build
INSTALL_DIR := /usr/local/bin

#-------------------------------------------------------------------------------
# HELP GENERATOR
#-------------------------------------------------------------------------------

# sed script - get automatically target descriptions from a makefile
define GET_TARGET_DESCRIPTIONS
/^[^:=#[:blank:]]+[[:blank:]]*:[^:=#]*#/!d
s/[:=#[:blank:]][^#]*//
s/[[:blank:]#]*#[[:blank:]#]*/#/g
s/^/  /
endef
export GET_TARGET_DESCRIPTIONS

# shows generated help of a given makefile from it's comments
define show_generated_help
	@$(ECHO) 'Usage: make [TARGET]...'
	@$(ECHO)
	@$(ECHO) 'TARGET:'
	@$(SED) -E -e "$$GET_TARGET_DESCRIPTIONS" $(1) | $(COLUMN) -t -s '#'
endef

#-------------------------------------------------------------------------------
# TARGETS
#-------------------------------------------------------------------------------

.PHONY: all install-deps install uninstall update help about

# there is no building required, so the default target references to the help target
all: help

install-deps: # install dependencies of the program
	apt install git make -y

install: # install the program
	cp $(BUILD_DIR)/gim $(INSTALL_DIR)/

uninstall: # uninstall the program
	rm $(INSTALL_DIR)/gim

update: uninstall install

help: # default, show this help
	$(call show_generated_help,makefile)

about: # show information about this makefile
	@$(ECHO) "Installation manager for 'gim' program."
	@$(ECHO)
	@$(ECHO) 'Copy''right 2018 Dominik Salvet'
	@$(ECHO) 'SPDX License Identifier: MIT'
	@$(ECHO) 'https://gitlab.com/dominiksalvet/gim'
