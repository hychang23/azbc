#!/bin/bash


DATADIR="/root/.ethereum/devchain/geth"
if [ ! -d "${DATADIR}" ]
then
	geth --datadir=~/.ethereum/devchain init "/root/genesis.json"
fi
cp -a /root/keystore/. /root/.ethereum/devchain/keystore/
sleep 3
geth --nodekey=/root/boot.key --datadir=~/.ethereum/devchain --cache 2048 --lightkdf --gcmode archive --allow-insecure-unlock --rpcapi "db,personal,eth,net,web3,admin" --rpccorsdomain="*" --networkid=54766 --rpc --rpcvhosts="*" --rpcaddr="0.0.0.0" --nodiscover --unlock 0 --password /root/password/password --mine
