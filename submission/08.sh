#!/bin/bash

# What is the coinbase tx in block 243,834?
bitcoin-cli -signet getblock $(bitcoin-cli -signet getblockhash 243834) true | jq -r '.tx[0]'