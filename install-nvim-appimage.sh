#! /bin/bash
set -e

mkdir -p nvim && cd nvim

if [ -f ./nvim.appimage ]; then
    echo Already exists: nvim.appimage
else 
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x nvim.appimage
fi

ln -fs ./nvim.appimage nvim

if which nvim; then
    echo Already in \$PATH: nvim
else
    echo "export PATH=\$PATH:$(pwd)" >> ~/.bashrc
    echo Add $(pwd) to \$PATH
fi

