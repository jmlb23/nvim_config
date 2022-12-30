#!/bin/sh

clone_packer()
{
    git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim >/dev/null 2>&1
}

command -v git >/dev/null 2>&1 && clone_packer || echo "Error cloning Packer"


# install treesiter-cli

command -v yarn >/dev/null 2>&1 && yarn global add tree-sitter-cli || echo "yarn is required to install tree-sitter"
