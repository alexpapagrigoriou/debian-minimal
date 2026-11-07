#!/bin/bash

set -e

sudo apt update

sudo apt install -y git git-lfs
git lfs install

cat >"$HOME/.gitconfig" <<'EOF'
[user]
	name = <name>
	email = <email>
[init]
	defaultBranch = main
[push]
	autoSetupRemote = true
[core]
	autocrlf = input
EOF
