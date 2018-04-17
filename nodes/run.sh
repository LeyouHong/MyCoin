#!/bin/sh
#geth --datadir node1 --networkid 98765 console --rpc
geth --identity "newEth" --rpc --rpccorsdomain "*" --datadir node1 --port 30303 --rpcapi "db,eth,net,web3" --networkid 98765 console
