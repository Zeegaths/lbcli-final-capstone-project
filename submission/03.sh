#!/bin/bash

# Which tx in block 216,351 spends the coinbase output of block 216,128?

# Step 1: Get the coinbase transaction ID from block 216,128
BLOCK_128_HASH=$(bitcoin-cli -signet getblockhash 216128)
COINBASE_TX_ID=$(bitcoin-cli -signet getblock $BLOCK_128_HASH 2 | jq -r '.tx[0].txid')

# Step 2: Get all transactions in block 216,351
BLOCK_351_HASH=$(bitcoin-cli -signet getblockhash 216351)
BLOCK_351_DATA=$(bitcoin-cli -signet getblock $BLOCK_351_HASH 2)

# Step 3: Find which transaction spends the coinbase output
# Output just the txid with no additional text
echo "$BLOCK_351_DATA" | jq -r --arg coinbase "$COINBASE_TX_ID" '
  .tx[] | 
  select(.vin[] | .txid == $coinbase) | 
  .txid
' | head -n 1