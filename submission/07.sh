#!/bin/bash

# What is the coinbase tx in block 243,834?

# Get block hash
BLOCKHASH=$(bitcoin-cli -signet getblockhash 243834)

# Get the first transaction ID (coinbase)
bitcoin-cli -signet getblock $BLOCKHASH | jq -r '.tx[0]'