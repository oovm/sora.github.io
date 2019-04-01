#!/usr/bin/env bash
# git submodule update --init --recursive --remote
git submodule foreach git pull -f --allow-unrelated-histories
# git submodule foreach git reset --hard