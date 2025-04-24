#!/bin/bash

# What is the coinbase tx in block 243,834?

# Get block hash
BLOCKHASH=$(bitcoin-cli -signet getblockhash 243834)

# Get the full block data with verbosity level 2
bitcoin-cli -signet getblock $BLOCKHASH 2 | jq -r '.tx[0]'