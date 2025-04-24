#!/bin/bash

# What is the coinbase tx in block 243,834?

# Get block hash and print the first transaction ID (coinbase)
# First get the block hash
blockhash=$(bitcoin-cli -signet getblockhash 243834)
echo "Block hash: $blockhash"

# Then get the block with that hash
bitcoin-cli -signet getblock "$blockhash" | jq -r '.tx[0]'