#!/bin/bash

# Which public key signed input 0 in this tx: d948454ceab1ad56982b11cf6f7157b91d3c6c5640e05c041cd17db6fff698f7

# The transaction ID
TX_ID="d948454ceab1ad56982b11cf6f7157b91d3c6c5640e05c041cd17db6fff698f7"

# Get the raw transaction data with full details
TX_DATA=$(bitcoin-cli -signet getrawtransaction $TX_ID 2)

# Extract the scriptSig assembly from input 0
SCRIPT_ASM=$(echo "$TX_DATA" | jq -r '.vin[0].scriptSig.asm')

# Extract the public key (last part of the scriptSig assembly)
PUBLIC_KEY=$(echo "$SCRIPT_ASM" | awk '{print $NF}')

# Output only the public key
echo "$PUBLIC_KEY"