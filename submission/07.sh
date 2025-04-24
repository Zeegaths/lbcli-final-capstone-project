# what is the coinbase tx in this block 243,834
# First get the block hash
blockhash=$(bitcoin-cli -signet getblockhash 243834)
echo "Block hash: $blockhash"

# Then get the block with that hash
bitcoin-cli -signet getblock "$blockhash" | jq -r '.tx[0]'