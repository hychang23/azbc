#!/bin/bash

cp -a /root/keystore/. /root/.ethereum/devchain/keystore/
DATADIR="/root/.ethereum/devchain/geth"
if [ ! -d "${DATADIR}" ]
then
	geth --datadir=~/.ethereum/devchain init "/root/files/genesis.json"
fi

sleep 3
geth --nodekey=/root/boot.key ${@}
