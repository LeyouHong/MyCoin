#!/bin/sh
mkdir node1
geth --datadir node1 account new
geth --datadir node1 init gensis.json
#geth --datadir node1 --networkid 98765 console
