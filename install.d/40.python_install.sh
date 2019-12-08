#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

if [ "$EUID" -ne 0 ]; then 

    # Make python2 and python3 virtual environments.

    function pyslug () {
        $1 -c 'import sys; sys.stdout.write("python{0[0]}{0[1]}\n".format(sys.version_info))'
    }
    function pydir () {
        echo "$HOME/.venv/$(pyslug $1)"
    }
    function mkvenv () {
        venv=$(pydir $1)
        if [ ! -d $venv ]; then
            virtualenv --python=$1 --system-site-packages $venv
        fi
    }

    function editable() {
      if [ -d $1 ]; then 
        echo "-e $1"
      fi
    }

    mkvenv python2
    mkvenv python3

    # Install useful packages.

    echo $(pydir python3)/bin/pip3 install                          \
         --upgrade pip                                              \
        bump2version                                                \
        cookiecutter                                                \
        docopt                                                      \
        docutils                                                    \
        ipython                                                     \
        jupyter                                                     \
        keyring                                                     \
        fn                                                          \
        more_itertools                                              \
        natsort                                                     \
        nonstdlib                                                   \
        pygobject                                                   \
        pytest                                                      \
        pytest_cov                                                  \
        python-gnupg                                                \
        pyyaml                                                      \
        regex                                                       \
        scipy                                                       \
        sh                                                          \
        sphinx                                                      \
        swifter                                                     \
        sympy                                                       \
        tdqm                                                        \
        twine                                                       \
        xonsh                                                       \
        $(editable ~/hacking/projects/autoprop)                     \
        $(editable ~/hacking/projects/avendesora)                   \
        $(editable ~/hacking/projects/color_me)                     \
        $(editable ~/hacking/projects/emborg)                       \
        $(editable ~/hacking/projects/fossilize)                    \
        $(editable ~/hacking/projects/inform)                       \
        $(editable ~/hacking/projects/sparekeys)                    \
        $(editable ~/research/software/projects/bio96)              \
        $(editable ~/research/software/projects/dirty_water)        \
        $(editable ~/research/software/projects/exmemo)             \
        $(editable ~/research/software/projects/klab)               \
        $(editable ~/research/software/projects/rosetta_dev_tools)  \
        $(editable ~/research/software/projects/wet_copy)           \
        $(editable ~/kxgames/libraries/vecrec)                      \
        $(editable ~/kxgames/libraries/glooey)                      \

fi
