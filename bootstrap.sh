#!/usr/bin/env sh
set -euo pipefail

git clone --recurse-submodules git@github.com:kalekundert/rc.git
./rc/install.zsh
