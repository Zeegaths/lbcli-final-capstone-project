#!/bin/bash

# What is the coinbase tx in this block 243,834

# Get block hash
BLOCK_HASH=$(bitcoin-cli -signet getblockhash 243834)

# Get the coinbase transaction ID (first transaction in the block)
bitcoin-cli -signet getblock $BLOCK_HASH 2 | jq -r '.tx[0]'