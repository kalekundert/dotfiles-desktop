#!/usr/bin/env sh

SCRIPT_PATH=$(readlink -f $0)
SCRIPT_DIR=$(dirname $SCRIPT_PATH)
CONFIG_DIR=$SCRIPT_DIR/configure.d
INSTALL_DIR=$SCRIPT_DIR/install.d

for SCRIPT in $INSTALL_DIR/*.sh; do
    source $SCRIPT
done
