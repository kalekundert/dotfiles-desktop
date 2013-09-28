#!/usr/bin/env bash

for agent in $(setopt nullglob; echo /tmp/ssh-*/agent.*); do
    export SSH_AUTH_SOCK=$agent
done

if [ ! "$SSH_AUTH_SOCK" ]; then
    eval `ssh-agent` > /dev/null
fi

