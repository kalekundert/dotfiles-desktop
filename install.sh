#!/usr/bin/env bash

# Can use a sloppier way of getting the path to this script (compared to the
# configure script) because this script is directly invoked by the user.
RC_PATH=$(readlink -f $0)
RC_DIR=$(dirname $RC_PATH)
CONFIG_DIR=$RC_DIR/configure.d
INSTALL_DIR=$RC_DIR/install.d

for SCRIPT in $INSTALL_DIR/*.sh; do
    source $SCRIPT
done
