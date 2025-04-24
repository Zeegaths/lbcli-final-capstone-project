#!/bin/bash

# What is the coinbase tx in block 243,834?
bitcoin-cli -signet getblockhash 243834 | xargs bitcoin-cli -signet getblock 2 | jq -r '.tx[0].txid'