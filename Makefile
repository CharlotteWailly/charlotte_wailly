## Charlotte Wailly
##
## Page d'accueil professionnelle pour Charlotte Wailly, avocate et médiatrice à Lorient, spécialisée en droit de la famille, urbanisme et construction. 
##
## @version 0.1.0
## @author  "Matthias Morin" <mat@tangoman.io>
## @license MIT
## @link    https://github.com/CharlotteWailly/charlotte_wailly

.PHONY: help open build commit deploy reset cname requirements self_install self_uninstall

##################################################
## Colors
##################################################

_PRIMARY   = \033[97m
_SECONDARY = \033[94m
_SUCCESS   = \033[32m
_DANGER    = \033[31m
_WARNING   = \033[33m
_INFO      = \033[95m
_DEFAULT   = \033[0m
_EOL       = \033[0m\n

_ALERT_PRIMARY   = \033[1;104;97m
_ALERT_SECONDARY = \033[1;45;97m
_ALERT_SUCCESS   = \033[1;42;97m
_ALERT_DANGER    = \033[1;41;97m
_ALERT_WARNING   = \033[1;43;97m
_ALERT_INFO      = \033[1;44;97m

##################################################
## Color Functions
##################################################

define _echo_primary
	@printf "${_PRIMARY}%b${_EOL}" $(1)
endef
define _echo_secondary
	@printf "${_SECONDARY}%b${_EOL}" $(1)
endef
define _echo_success
	@printf "${_SUCCESS}%b${_EOL}" $(1)
endef
define _echo_danger
	@printf "${_DANGER}%b${_EOL}" $(1)
endef
define _echo_warning
	@printf "${_WARNING}%b${_EOL}" $(1)
endef
define _echo_info
	@printf "${_INFO}%b${_EOL}" $(1)
endef

define _alert_primary
	@printf "${_EOL}${_ALERT_PRIMARY}%64s${_EOL}${_ALERT_PRIMARY} %-63s${_EOL}${_ALERT_PRIMARY}%64s${_EOL}\n" "" $(1) ""
endef
define _alert_secondary
	@printf "${_EOL}${_ALERT_SECONDARY}%64s${_EOL}${_ALERT_SECONDARY} %-63s${_EOL}${_ALERT_SECONDARY}%64s${_EOL}\n" "" $(1) ""
endef
define _alert_success
	@printf "${_EOL}${_ALERT_SUCCESS}%64s${_EOL}${_ALERT_SUCCESS} %-63s${_EOL}${_ALERT_SUCCESS}%64s${_EOL}\n" "" $(1) ""
endef
define _alert_danger
	@printf "${_EOL}${_ALERT_DANGER}%64s${_EOL}${_ALERT_DANGER} %-63s${_EOL}${_ALERT_DANGER}%64s${_EOL}\n" "" $(1) ""
endef
define _alert_warning
	@printf "${_EOL}${_ALERT_WARNING}%64s${_EOL}${_ALERT_WARNING} %-63s${_EOL}${_ALERT_WARNING}%64s${_EOL}\n" "" $(1) ""
endef
define _alert_info
	@printf "${_EOL}${_ALERT_INFO}%64s${_EOL}${_ALERT_INFO} %-63s${_EOL}${_ALERT_INFO}%64s${_EOL}\n" "" $(1) ""
endef

##################################################
## Help
##################################################

## Print this help
help:
	$(call _alert_primary, "Charlotte Wailly")

	@printf "${_WARNING}Description:${_EOL}"
	@printf "${_PRIMARY}  Page d'accueil professionnelle pour Charlotte Wailly, avocate et médiatrice à Lorient, spécialisée en droit de la famille, urbanisme et construction. ${_EOL}\n"

	@printf "${_WARNING}Usage:${_EOL}"
	@printf "${_PRIMARY}  make [command]${_EOL}\n"

	@printf "${_WARNING}Commands:${_EOL}"
	@awk '/^### /{printf"\n${_WARNING}%s${_EOL}",substr($$0,5)} \
	/^[a-zA-Z0-9_-]+:/{HELP="";if( match(PREV,/^## /))HELP=substr(PREV,4); \
		printf "${_SUCCESS}  %-12s  ${_PRIMARY}%s${_EOL}",substr($$1,0,index($$1,":")-1),HELP \
	}{PREV=$$0}' ${MAKEFILE_LIST}

##################################################
### App
##################################################

## Open in default browser
open:
	@printf "${_INFO}sh charlotte.sh open${_EOL}"
	@sh charlotte.sh open

## Build app to "dist" folder
build:
	@printf "${_INFO}sh charlotte.sh build${_EOL}"
	@sh charlotte.sh build

## Commit dist directory changes
commit:
	@printf "${_INFO}sh charlotte.sh commit${_EOL}"
	@sh charlotte.sh commit

## Deploy "build" folder to "gh-pages"
deploy:
	@printf "${_INFO}sh charlotte.sh deploy${_EOL}"
	@sh charlotte.sh deploy

## Delete "gh-pages" and rebuild branch from "build" folder
reset:
	@printf "${_INFO}sh charlotte.sh reset${_EOL}"
	@sh charlotte.sh reset

## Dump CNAME file
cname:
	@printf "${_INFO}sh charlotte.sh cname${_EOL}"
	@sh charlotte.sh cname

##################################################
### Install
##################################################

## Check requirements
requirements:
	@printf "${_INFO}sh charlotte.sh requirements${_EOL}"
	@sh charlotte.sh requirements

##################################################
### Self Install
##################################################

## Install script and enable autocompletion
self_install:
	@printf "${_INFO}sh charlotte.sh self_install${_EOL}"
	@sh charlotte.sh self_install

## Uninstall script from system
self_uninstall:
	@printf "${_INFO}sh charlotte.sh self_uninstall${_EOL}"
	@sh charlotte.sh self_uninstall


