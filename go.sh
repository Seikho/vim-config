#!/bin/bash

# Fetch Go 1.7
sudo curl -s https://storage.googleapis.com/golang/go1.7.linux-amd64.tar.gz >> $HOME/go.tar.gz

# Unpack the archive
(cd $HOME && sudo tar -xvf go.tar.gz)

# Create $GOPATH
touch $HOME/.bashrc
echo "export PATH=\"$HOME/go/bin:\$PATH\"" >> $HOME/.bashrc
echo "export GOPATH=\"$HOME/gotools\"" >> $HOME/.bashrc
echo "export GOROOT=\"$HOME/go\"" >> $HOME/.bashrc
source $HOME/.bashrc