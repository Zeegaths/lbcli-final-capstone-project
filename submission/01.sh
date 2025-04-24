#!/bin/bash

# What is the hash of block 243,833?

# First create a wallet if you don't have one
bitcoin-cli -signet createwallet "mywallet"

# Then generate a native SegWit address
bitcoin-cli -signet -rpcwallet=mywallet getnewaddress "" "bech32" > submission/address.txt

bitcoin-cli -signet getblockhash 243833