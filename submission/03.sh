# Created a SegWit address.
# Add funds to the address.
# Return only the Address
P2SH_ADDRESS=$(bitcoin-cli -regtest getnewaddress "segwitadd" "p2sh-segwit")
bitcoin-cli -regtest generatetoaddress 101 "$P2SH_ADDRESS" > /dev/null
echo "$P2SH_ADDRESS"