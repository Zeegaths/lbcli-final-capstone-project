#!/bin/bash

# How many new outputs were created by block 243,825?

# Get the block hash
BLOCK_HASH=$(bitcoin-cli -signet getblockhash 243825)

# Get block details with full transaction information
BLOCK_DATA=$(bitcoin-cli -signet getblock $BLOCK_HASH 2)

# Count the outputs across all transactions in the block
OUTPUT_COUNT=$(echo "$BLOCK_DATA" | jq '[.tx[] | .vout | length] | add')

# Print just the number
echo $OUTPUT_COUNT