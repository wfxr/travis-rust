#!/usr/bin/env bash

set -ex

if [ "$TRAVIS_OS_NAME" != linux ]; then
    exit 0
fi

sudo apt-get update

# needed for i686 linux gnu target
if [[ $TARGET == i686-unknown-linux-gnu ]]; then
    sudo apt-get install -y gcc-multilib
fi
