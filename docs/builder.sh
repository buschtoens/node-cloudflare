#!/usr/bin/env bash

set -eo pipefail; [[ "$TRACE" ]] && set -x

function note() {
  echo -e "\033[1;37m${1}\033[0m"
}

note "Installing Node.js"
apt-get update
apt-get install -y nodejs
apt-get clean
rm -rf /var/lib/apt/lists/*

note "Cloning and installing Slate"
git clone https://github.com/lord/slate.git /opt/slate
bundle install