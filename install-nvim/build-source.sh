#! /bin/bash
set -e

apt update
apt install -y git ninja-build gettext cmake unzip curl

WORK_DIR=/tmp/nvim-$RANDOM
mkdir -p $WORK_DIR && cd $WORK_DIR
curl -LO https://github.com/neovim/neovim/archive/refs/tags/stable.tar.gz
tar -xzf stable.tar.gz

cd neovim-stable
make CMAKE_BUILD_TYPE=Release
make install

