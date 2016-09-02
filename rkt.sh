#!/bin/bash
curl -s https://github.com/coreos/rkt/releases/download/v1.14.0/rkt-v1.14.0.tar.gz >> $HOME/rkt.tar.gz
(cd $HOME && tar -xfv rkt.tar.gz)
sudo ln -s $HOME/rkt/rkt /usr/local/bin/rkt
