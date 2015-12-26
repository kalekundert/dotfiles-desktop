#!/usr/bin/env sh

SCRIPT_PATH=$(readlink -f $0)
INSTALL_PATH=$(dirname $SCRIPT_PATH)

cd $INSTALL_PATH
for SCRIPT in install.d/*.sh; do
    source $SCRIPT
done
cd ~-
