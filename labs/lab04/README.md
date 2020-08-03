# its581
course materials and references for its581

__Dapp development__

0. _warmup reading_
* [ethereum overview](https://www.trufflesuite.com/tutorials/ethereum-overview)

1. _Private network_

_1. Running client_

* _Install [geth](https://geth.ethereum.org/docs/install-and-build/installing-geth)_
```bash
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum
```
* _Use geth in [private network](https://geth.ethereum.org/docs/interface/private-network)_
```bash
# 1. Choosing a networkid
# 2. Choosing A Consensus Algorithm

# 3. Creating The Genesis Block
# 4. Clique Example
# 5. Ethash Example
geth account new --datadir data

# 6. Initializing the Geth Database
geth init --datadir data genesis.json
geth --datadir data --networkid 15

# 7. Scheduling Hard Forks

# 8. Setting Up Networking

# 9. Running Member Nodes
# a.1. Clique: Running A Signer
# a.2. Ethash: Running A Miner
```
* [JSON-RPC Server](https://geth.ethereum.org/docs/rpc/server)
```bash
# 1. HTTP Server
geth --rpc --rpcport 3334 --rpcapi personal,eth,net,web3b
```
_2. [JSON-RPC API](https://geth.ethereum.org/docs/rpc/server)_
* Real-time events
* admin, clique, debug, eth, les, miner, personal and txpool Namespace

_3. [web3.js - Ethereum JavaScript API](https://web3js.readthedocs.io)_

2. _Ganache & Truffle_

```bash
# 1 . open a terminal window then install  nvm
sudo chown -R $USER:$USER /opt
sudo apt install curl
mkdir -p /opt/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | NVM_DIR="/opt/nvm"  bash

# 2. open a new terminal windows so nvm will be available for use
nvm install --lts # install the latest lts version node

npm install -g ganache-cli

# 3. download the gui verion ganache from https://github.com/trufflesuite/ganache/releases
# then play with it, in a terminal, go to the folder holds the downloaded ganache
mv ganache-2.4.0-linux-x86_64.AppImage ganache
chmod +x ganache
./ganache

# 4. install and play with truffle(https://www.trufflesuite.com/docs/truffle/quickstart)
npm install -g truffle

# 5. play with your own smart contract
truffle init # create a framework
truffle develop # start console

>compile
>migrate

# get deployed smart contract abstraction
let abs = await MyContract.deployed()

abs.functions(params)

# get built-in accounts
let accounts = await web3.eth.getAccounts()


```
__Truffle,Ganache and web3__
  * [Ganache docs](https://www.trufflesuite.com/docs/ganache/overview)
    * [ganache](https://github.com/trufflesuite/ganache-cli)
    * [ganache-core](https://github.com/trufflesuite/ganache-core)
  * [Truffle docs](https://www.trufflesuite.com/docs/truffle/overview)
    * [truffle](https://github.com/trufflesuite/truffle)
  * [web3.js - Ethereum JavaScript API](https://web3js.readthedocs.io)
    * [web3.js](https://github.com/ethereum/web3.js)
  * [trufflesuite](https://www.trufflesuite.com/)
    * [trufflesuite](https://github.com/trufflesuite)
    * [truffle boxes](https://www.trufflesuite.com/boxes)
  * [Solidity type converter](https://blockchangers.github.io/solidity-converter-online/)

__References__
* _Ethereum node(client)_
  * _overview and quick start_
    * [ethernodes](https://ethernodes.org/)
    * [ethnode](https://github.com/vrde/ethnode)
    * [NetworkID and ChainID](https://besu.hyperledger.org/en/stable/Concepts/NetworkID-And-ChainID/)
    * [EVM Networks](https://chainid.network/)
    * [Ethereum node configuration modes cheat sheet](https://dev.to/5chdn/ethereum-node-configuration-modes-cheat-sheet-25l8)
    * [Running an Ethereum Full Node on a RaspberryPi 4 (model B)](https://kauri.io/running-an-ethereum-full-node-on-a-raspberrypi-4-m/9695fcca217f46feb355245275835fc0/a)
  * [openethereum (formerly parity) in rust](https://github.com/openethereum/openethereum)
    * [openethereum wiki](https://openethereum.github.io/wiki/)
    * [chain specification](https://openethereum.github.io/wiki/Chain-specification)
  * [geth in go](https://geth.ethereum.org/)
    * [geth](https://github.com/ethereum/go-ethereum)
    * [geth docs](https://geth.ethereum.org/docs/)
    * [private chain](https://geth.ethereum.org/docs/interface/private-network)
  * [nethermind in C#](https://nethermind.io/)
    * [nethermind](https://github.com/NethermindEth/nethermind)
    * [nethermind docs](https://nethermind.readthedocs.io/)
  * [besu in Java](https://pegasys.tech/solutions/hyperledger-besu/)
    * [besu](https://github.com/hyperledger/besu)
    * [besu docs](https://besu.hyperledger.org/)
  * [trinity in Python](https://trinity.ethereum.org/)
    * [trinity](https://github.com/ethereum/trinity)
      * [trinity docs](https://trinity-client.readthedocs.io/en/latest/)
    * [py-evm](https://github.com/ethereum/py-evm)
      * [py-evm docs](https://py-evm.readthedocs.io/en/latest/)
* [Frontend Ethereum APIs](https://github.com/ConsenSys/ethereum-developer-tools-list\#frontend-ethereum-apis)
  * _Frontend Javascript_
    * [web3.js - Ethereum JavaScript API](https://web3js.readthedocs.io)
    * [web3.js](https://github.com/ethereum/web3.js/)
    * [then function](https://masteringjs.io/tutorials/fundamentals/then)
    * [Promise.prototype.then()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global\_Objects/Promise/then)
    * [Using Promises](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using\_promises)
    * [Async function](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async\_function)
    * [Arrow Function](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow\_functions)
    * [Keccak Abi encodePacked with JavaScript](https://blog.8bitzen.com/posts/18-03-2019-keccak-abi-encodepacked-with-javascript/)
    * [Redux](https://redux.js.org/)
* _Javascript testing framework_    
    * [Mocha](https://mochajs.org/)
		  * [A guide to mocha's describe(), it() and setup hooks](https://samwize.com/2014/02/08/a-guide-to-mochas-describe-it-and-setup-hooks/)
		  * [A quick and complete guide to Mocha testing](https://blog.logrocket.com/a-quick-and-complete-guide-to-mocha-testing-d0e0ea09f09d/)
    * [Chai](https://www.chaijs.com/)
    * [Truffle test does NOT work](https://github.com/trufflesuite/truffle/issues/2463)
* _Ethereum toolsets_
  * [EthereumJS](https://ethereumjs.github.io/)
    * [EthereumJS](https://github.com/ethereumjs)
* _Smart contract packages_
  * [ethPM](https://www.ethpm.com/)
    * [ethpm](https://github.com/ethpm)
    * [ethpm-cli](https://github.com/ethpm/ethpm-cli)
  * [npm](https://docs.npmjs.com/)
  * [ERC: Ethereum Smart Contract Packaging Specification](https://github.com/ethereum/EIPs/issues/190)

* _Ethereum development framework_
  * [Truffle](https://www.trufflesuite.com)
  * [Dapp](https://dapphub.com/)
  * [brownie](https://github.com/eth-brownie/brownie)
  * [Embark](https://framework.embarklabs.io/)

* _Ethereum hardforks_
  * [History of Ethereum Hard Forks](https://medium.com/mycrypto/the-history-of-ethereum-hard-forks-6a6dae76d56f)
  * [Please provide a summary of the Ethereum hard forks](https://ethereum.stackexchange.com/questions/13014/please-provide-a-summary-of-the-ethereum-hard-forks)

* _MetaMask_
  * [How can I reset my password?](https://metamask.zendesk.com/hc/en-us/articles/360039616872-How-can-I-reset-my-password-)
  * [No Longer Injecting web3.js](https://medium.com/metamask/no-longer-injecting-web3-js-4a899ad6e59e)
  * [Breaking Changes to the MetaMask Inpage Provider](https://medium.com/metamask/breaking-changes-to-the-metamask-inpage-provider-b4dde069dd0a)
* [ENS](https://ens.domains/)
