#!/usr/bin/env bash

chmod +x completes login.expect z*

ln -s -f $(pwd)/zssh /usr/local/bin/zssh
ln -s -f $(pwd)/zredis /usr/local/bin/zredis
ln -s -f $(pwd)/zscp /usr/local/bin/zscp

echo -e "# The fcs-tools command(zssh、zscp、zredis) completes.\nsource $(pwd)/completes" >> `(type zsh > /dev/null 2>&1 && echo "$HOME/.zshrc") || echo "$HOME/.bashrc"`
source $(pwd)/completes
