# How many satoshis did this transaction pay for fee?: b71fb9ab7707407cc7265591e0c0d47d07afede654f91de1f63c0cb522914bcb
#!/bin/bash

# How many satoshis did this transaction pay for fee?: b71fb9ab7707407cc7265591e0c0d47d07afede654f91de1f63c0cb522914bcb

# Get transaction details
bitcoin-cli -signet getrawtransaction b71fb9ab7707407cc7265591e0c0d47d07afede654f91de1f63c0cb522914bcb 2 | jq '(.vin | map(.prevout.value) | add) - (.vout | map(.value) | add) | . * 100000000 | floor'