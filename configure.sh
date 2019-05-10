# This variable will be available to other config scripts.
THIS_SHELL=`ps --no-headers --format comm $$`

# Get the path to this script.  $0 is not good enough, because it depends on how the script is invoked (e.g. `~/.bashrc` vs `source ~/.bashrc`).  Unfortunatley, the correct answer (below) is shell-dependent.
if [ "$THIS_SHELL" = "zsh" ]; then
    RC_PATH=${(%):-%x}
elif [ "$THIS_SHELL" = "bash" ]; then
    RC_PATH=${BASH_SOURCE[0]}
fi

RC_PATH=$(readlink -f $RC_PATH)
RC_DIR=$(dirname $RC_PATH)
CONFIG_DIR=$RC_DIR/configure.d

for SCRIPT in $CONFIG_DIR/*.sh; do
    source $SCRIPT
done

if [[ $1 == "eval" ]]
then
    "$@"
    set --
fi
