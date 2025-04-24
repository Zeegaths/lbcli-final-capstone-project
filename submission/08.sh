#!/bin/bash

# What is the coinbase tx in block 243,834?
BLOCKHASH=$(bitcoin-cli -signet getblockhash 243834)
bitcoin-cli -signet getblock $BLOCKHASH 1 | grep -o '"tx":\[[^,]*' | cut -d'"' -f4