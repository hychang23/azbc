#!/bin/bash


DATADIR="/root/.ethereum/devchain/geth"
if [ ! -d "${DATADIR}" ]
then
	geth --datadir=~/.ethereum/devchain init "/root/genesis.json"
fi
cp -a /root/keystore/. /root/.ethereum/devchain/keystore/
sleep 3
geth --datadir=~/.ethereum/devchain --allow-insecure-unlock --rpccorsdomain="*" --networkid=54766 --rpc --bootnodes="enode://288b97262895b1c7ec61cf314c2e2004407d0a5dc77566877aad1f2a36659c8b698f4b56fd06c4a0c0bf007b4cfb3e7122d907da3b005fa90e724441902eb19e@bootstrap:30303"

