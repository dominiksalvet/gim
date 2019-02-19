#-------------------------------------------------------------------------------
# Copyright 2018-2019 Dominik Salvet
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
TRUE := true

# make directory definitions
MAKE_DIR := make
SRC_DIR := src

# gim directory definitions, exported for called scripts
export GLOBAL_CFG_DIR := /etc/gim
export LOCAL_CFG_DIR := $(HOME)/.config/gim

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
	@$(ECHO) 'USAGE:'
	@$(ECHO) '  make [TARGET...]'
	@$(ECHO)
	@$(ECHO) 'TARGET:'
	@$(SED) -E -e "$$GET_TARGET_DESCRIPTIONS" $(1) | $(COLUMN) -t -s '#'
endef

#-------------------------------------------------------------------------------
# TARGETS
#-------------------------------------------------------------------------------

.PHONY: all install uninstall help

# there is no building required
all: # default, does nothing
	@$(TRUE)

install: # install the entire project automatically
	@./$(MAKE_DIR)/install '$(SRC_DIR)'

uninstall: # uninstall the project
	@./$(MAKE_DIR)/uninstall '$(SRC_DIR)'

help: # show this help
	$(call show_generated_help,makefile)
