#!/bin/bash
# transplant & edit: angel
# date: Thu Oct  7 16:20:43 CST 2021
# notice: Terminal only for MacOSX, Linux and MinGW
# usage: sh assemble.sh

NES_OUTPUT_SIMPLE_NAME=_contra_force
NES_OUTPUT_FILE_SIZE=262160
NES_OUTPUT_FILE_SHA1_ORIGINAL="9FA1EE5FCACADA43CFDA91773C7298C722B7D990"
NES_OUTPUT_FAST_ASSEMBLY=1
NES_OUTPUT_LISTING_NAME=z_listing.asm
NES_OUTPUT_DEBUG_NAME=z_debug.txt
NES_OUTPUT_FILE_BACKUP=0
NES_OUTPUT_FILE_DIFF=0

# navigate to the directory
BASH_EXEC_DIR=$(dirname "$0")
# goto directory
cd "${BASH_EXEC_DIR}"

# common function(s) support
source ../_scripts/os_support.sh
# environment function(s) support
source ../_scripts/env.sh

# assemble-header function(s) support
source ../_scripts/assemble_header.sh
# assemble-standard function(s) support
source ../_scripts/assemble_standard.sh
# assemble-footer function(s) support
source ../_scripts/assemble_footer.sh
