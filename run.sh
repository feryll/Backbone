#!/bin/bash

rm *.dat
rm *.db
rm address*.*

export NODE_ID=3000
ADDR=$(./Backbone CreateWallet | awk '{print $5}')

./Backbone CreateBlockchain -address $ADDR

ADDR2=$(./Backbone CreateWallet | awk '{print $5}')
echo "------------------------------"
echo "NODE_ID = 3000"
echo "addr 1 : "  $ADDR
echo "addr 2 : "  $ADDR2

echo $ADDR > address_3000.txt
echo $ADDR2 >> address_3000.txt

cp blockchain_3000.db blockchain_genesis.db
cp blockchain_genesis.db blockchain_3001.db
cp blockchain_genesis.db blockchain_3002.db

export NODE_ID=3001
ADDR=$(./Backbone CreateWallet | awk '{print $5}')
ADDR2=$(./Backbone CreateWallet | awk '{print $5}')
ADDR3=$(./Backbone CreateWallet | awk '{print $5}')
ADDR4=$(./Backbone CreateWallet | awk '{print $5}')
echo "------------------------------"
echo "NODE_ID = 3001"
echo "addr 1 : "  $ADDR
echo "addr 2 : "  $ADDR2
echo "addr 3 : "  $ADDR3
echo "addr 4 : "  $ADDR4

echo $ADDR > address_3001.txt
echo $ADDR2 >> address_3001.txt
echo $ADDR3 >> address_3001.txt
echo $ADDR4 >> address_3001.txt

export NODE_ID=3002
ADDR=$(./Backbone CreateWallet | awk '{print $5}')
ADDR2=$(./Backbone CreateWallet | awk '{print $5}')
ADDR3=$(./Backbone CreateWallet | awk '{print $5}')
ADDR4=$(./Backbone CreateWallet | awk '{print $5}')
echo "------------------------------"
echo "NODE_ID = 3002"
echo "addr 1 : "  $ADDR
echo "addr 2 : "  $ADDR2
echo "addr 3 : "  $ADDR3
echo "addr 4 : "  $ADDR4

echo $ADDR > address_3002.txt
echo $ADDR2 >> address_3002.txt
echo $ADDR3 >> address_3002.txt
echo $ADDR4 >> address_3002.txt
