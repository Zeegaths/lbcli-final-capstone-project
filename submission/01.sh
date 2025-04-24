#!/bin/bash

# What is the hash of block 243,833?

# Get the block hash
BLOCK_HASH=$(bitcoin-cli getblockhash 243833)
echo "Block hash for 243833: $BLOCK_HASH"

# Get detailed block information including transaction data
BLOCK_INFO=$(bitcoin-cli getblock $BLOCK_HASH 2)

# Count total inputs across all transactions in the block
# Skip the coinbase transaction (first transaction) as it has no inputs
INPUT_COUNT=$(echo "$BLOCK_INFO" | jq '[.tx[1:] | .[].vin | length] | add')

echo "Total input count (excluding coinbase): $INPUT_COUNT"