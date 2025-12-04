#!/bin/sh

command -v rg 2>&1 >/dev/null || echo "ripgrep is recomended to be installed"

command -v yarn 2>&1 >/dev/null || echo "yarn is required to install tree-sitter"

# install treesiter-cli

command -v yarn >/dev/null 2>&1 && yarn global add tree-sitter-cli || echo "yarn is required to install tree-sitter"
