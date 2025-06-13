#!/bin/bash
set -e

MAIN_BRANCH=main

if [ -z $(git remote -v | grep "fetch" | grep -o "upstream") ]; then
    git remote add upstream git@github.com:mother-of-all-self-hosting/mash-playbook.git
fi

git pull upstream main --no-rebase
just roles
