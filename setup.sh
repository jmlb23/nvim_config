#!/bin/sh

clone_packer()
{
    git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim >/dev/null 2>&1
}

command -v git >/dev/null 2>&1 && clone_packer || echo "Error cloning Packer"
