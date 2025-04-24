#!/bin/bash

# What is the coinbase tx in block 243,834?

# Get block hash and print the first transaction ID (coinbase)
bitcoin-cli -signet getblock $(bitcoin-cli -signet getblockhash 243834) | jq -r '.tx[0]'