#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

if [ "$#" = 0 ]; then 
    echo "Usage: ./deploy_to_pypi.sh <major|minor|patch>"
    exit 1
fi

git pull
bumpversion $@
git push && git push --tags
./setup.py sdist upload

