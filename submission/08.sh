#!/bin/bash

# What is the coinbase tx in this block 243,834

# Get the hash of block 243,834
BLOCK_HASH=$(bitcoin-cli -signet getblockhash 243834)

# Get the coinbase transaction ID (first transaction in the block)
bitcoin-cli -signet getblock $BLOCK_HASH | jq -r '.tx[0]'