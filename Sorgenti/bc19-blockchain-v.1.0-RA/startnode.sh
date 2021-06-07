#!/bin/sh
geth --networkid 4224 --mine --miner.threads 2 --datadir "." --nodiscover --http --http.port "8545" --port "30303" --http.corsdomain "*" --allow-insecure-unlock --nat "any" --http.api "eth,web3,personal,net,miner" --unlock 0 --password ./password.sec --ipcpath "~/.ethereum/geth.ipc" --http.addr "0.0.0.0" --http.vhosts "*"
