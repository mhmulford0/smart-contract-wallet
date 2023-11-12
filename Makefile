deploy:
	@bash -c 'source .env && forge script --rpc-url $${RPC_URL} --private-key $${PRIVATE_KEY} script/Wallet.s.sol:WalletScript --broadcast'


deploy-testnet:
	@bash -c 'source .env && forge script --rpc-url $${RPC_URL_TESTNET} --private-key $${PRIVATE_KEY} script/Wallet.s.sol:WalletScript --broadcast'


deploy-local:
	@bash -c 'source .env && forge script --rpc-url $${RPC_URL_LOCAL} --private-key $${PRIVATE_KEY} script/Wallet.s.sol:WalletScript --broadcast'

run-test:
	forge test