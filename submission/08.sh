#!/bin/bash

# What is the coinbase tx in block 243,834?

# Get block hash
BLOCKHASH=$(bitcoin-cli -signet getblockhash 243834)

# Get the raw hex of the coinbase transaction by:
# 1. Getting the first transaction ID
TXID=$(bitcoin-cli -signet getblock $BLOCKHASH | jq -r '.tx[0]')

# 2. Getting the raw transaction hex
bitcoin-cli -signet getrawtransaction $TXID