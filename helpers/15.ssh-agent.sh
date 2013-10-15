#!/usr/bin/env sh

SSH_PID=`ps -eu kale | grep ' ssh-agent$' | grep -vc grep`

if [ $SSH_PID -eq 0 ]; then
    ssh-agent > ~/.shell/database/ssh-env-vars.sh
fi

. ~/.shell/database/ssh-env-vars.sh > /dev/null
