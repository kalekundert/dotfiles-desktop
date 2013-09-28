#!/usr/bin/env bash

if [ $THIS_SHELL = zsh ]; then
    AGENTS=$(setopt nullglob; echo /tmp/ssh-*/agent.*)
elif [ $THIS_SHELL = bash ]; then
    AGENTS=$(shopt -s nullglob; echo /tmp/ssh-*/agent.*)
fi

for AGENT in $AGENTS; do
    export SSH_AUTH_SOCK=$AGENT
done

if [ ! "$SSH_AUTH_SOCK" ]; then
    eval `ssh-agent` > /dev/null
fi

