#!/bin/bash

# What block height was this tx mined?
# 49990a9c8e60c8cba979ece134124695ffb270a98ba39c9824e42c4dc227c7eb

# Get transaction data with full information
TX_DATA=$(bitcoin-cli -signet getrawtransaction 49990a9c8e60c8cba979ece134124695ffb270a98ba39c9824e42c4dc227c7eb 2)

# Extract the block hash
BLOCK_HASH=$(echo "$TX_DATA" | jq -r '.blockhash')

# Get the block height
bitcoin-cli -signet getblock $BLOCK_HASH | jq -r '.height'