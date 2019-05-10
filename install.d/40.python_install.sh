#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

if [ "$EUID" -ne 0 ]; then 

    # Make python2 and python3 virtual environments.

    function pyslug () {
        $1 -c 'import sys; sys.stdout.write("python{0[0]}{0[1]}\n".format(sys.version_info))'
    }
    function pydir () {
        echo "$HOME/.virtualenvs/$(pyslug $1)"
    }
    function mkvenv () {
        venv=$(pydir $1)
        if [ ! -d $venv ]; then
            virtualenv --python=$1 --system-site-packages $venv
        fi
    }

    mkvenv python2
    mkvenv python3

    # Install useful packages.

    $(pydir python3)/bin/pip3 install   \
         --upgrade pip                  \
        bump2version                    \
        cookiecutter                    \
        docopt                          \
        docutils                        \
        ipython                         \
        jupyter                         \
        keyring                         \
        fn                              \
        matplotlib                      \
        more_itertools                  \
        natsort                         \
        nonstdlib                       \
        numpy                           \
        pandas                          \
        pygobject                       \
        pytest                          \
        pytest_cov                      \
        python-gnupg                    \
        pyyaml                          \
        regex                           \
        scipy                           \
        sh                              \
        sphinx                          \
        sympy                           \
        twine                           \
        xonsh                           \

fi
