#!/bin/bash

# Only one tx in block 243,821 signals opt-in RBF. What is its txid?

# Get block hash
BLOCK_HASH=$(bitcoin-cli -signet getblockhash 243821)

# Get all transactions in the block
bitcoin-cli -signet getblock $BLOCK_HASH 2 | jq -r '.tx[] | select(.vin[] | .sequence < 4294967294) | .txid' | head -n 1