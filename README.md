
## Gnosis Safe contracts for usd-sub-net

### Deployment

1. Make sure you have installed [foundry](https://github.com/foundry-rs/foundry)
2. Start by following the steps in [setup](https://github.com/sub-usd-net/setup) to bootstrap the subnet
3. Deploy contracts

```shell
forge script script/SafeContractDeployment.s.sol:SafeContractDeployment --rpc-url $YOUR_RPC_URL --private-key $PKEY --broadcast
```
