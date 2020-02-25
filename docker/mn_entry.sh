#!/bin/bash



COIN_NAME="$1"
masternodeprivkey="$2"
ip=$3

DLINKHOST="https://download.happyleaf.money/wallet/ubuntu18"
TARDAEMON=${COIN_NAME}-light.tar.gz



cd /usr/local/bin
wget -O ${TARDAEMON} ${DLINKHOST}/${TARDAEMON} && tar -xzf ${TARDAEMON} && rm ${TARDAEMON}
chmod 744 *


echo "COIN_NAME=$COIN_NAME"
echo "masternodeprivkey=$masternodeprivkey"
echo "ip=$ip"

cd /root/.${COIN_NAME}

confFile="${COIN_NAME}.conf"
port=5333

echo -e "\e[94m$(date +"%H:%M:%S %d/%m/%Y") Create ${confFile}\e[0m"
echo "rpcuser=mTr57v3kbj" >> $confFile
echo "rpcpassword=8p9I6mjzh5luYRuCDEBg1iGmy" >> $confFile
echo "txindex=1" >> $confFile
echo "zefirstake=1" >> $confFile
echo "rpcallowip=127.0.0.1" >> $confFile
echo "rpcport=17901" >> $confFile
echo "server=1" >> $confFile
echo "daemon=0" >> $confFile
echo "port=${port}" >> $confFile
echo "masternodeprivkey=$masternodeprivkey" >> $confFile
echo "masternodeaddr=$ip" >> $confFile
echo "printtoconsole=1" >> $confFile
echo "masternode=1" >> $confFile
echo "bantime=50" >> $confFile
echo "maxconnections=256" >> $confFile

${COIN_NAME}d --printtoconsole
