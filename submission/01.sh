#!/bin/bash

# What is the hash of block 243,833?

BLOCK_HASH=$(bitcoin-cli -signet getblockhash 243833)
echo "Block hash for 243833: $BLOCK_HASH"

# Get detailed block information
BLOCK_DATA=$(bitcoin-cli -signet getblock $BLOCK_HASH 2)

# Count inputs across all transactions
# We'll parse this using jq to count all inputs in all transactions
INPUT_COUNT=$(echo "$BLOCK_DATA" | jq '[.tx[] | .vin | length] | add')
echo "Total input count: $INPUT_COUNT"