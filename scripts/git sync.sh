#!/usr/bin/env bash
# Normal
git submodule foreach git pull

# Re-link
git submodule deinit --all
git submodule update --init --recursive --remote

# Force link
# git submodule foreach git pull -f --allow-unrelated-histories
# git submodule foreach git reset --hard