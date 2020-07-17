# its581
course materials and references for its581

## Module5: Blockchain security

* __Blockchain Security__
  * [Hacking the distributed](https://hackingdistributed.com/)

* __Bitcoin Security__
  * [Bitcoin weaknesses](https://en.bitcoin.it/wiki/Weaknesses)
  * [Double-spending](https://en.wikipedia.org/wiki/Double-spending)
  * [51% attack](https://en.bitcoinwiki.org/wiki/51%25\_attack)

* __Smart Contract Security__
  * _vulnerabilities & hackings_
    * [History of Ethereum Security Vulnerabilities, Hacks, and Their Fixes](https://applicature.com/blog/blockchain-technology/history-of-ethereum-security-vulnerabilities-hacks-and-their-fixes)
    * [A Survey on Ethereum Systems Security:Vulnerabilities, Attacks and Defenses](https://arxiv.org/pdf/1908.04507.pdf)
    * [Analysis of the DAO exploit](https://hackingdistributed.com/2016/06/18/analysis-of-the-dao-exploit/)
    * [Reentrancy Attack On Smart Contracts: How To Identify The Exploitable And An Example Of An Attack Contract](https://medium.com/@gus_tavo_guim/reentrancy-attack-on-smart-contracts-how-to-identify-the-exploitable-and-an-example-of-an-attack-4470a2d8dfe4)
    * [How $800k Evaporated from the PoWH Coin Ponzi Scheme Overnight](https://medium.com/@ebanisadr/how-800k-evaporated-from-the-powh-coin-ponzi-scheme-overnight-1b025c33b530)
    * [New batchOverflow Bug in Multiple ERC20 Smart Contracts (CVE-2018–10299)](https://medium.com/@peckshield/alert-new-batchoverflow-bug-in-multiple-erc20-smart-contracts-cve-2018-10299-511067db6536)
    * [Ethereum quirks](https://swende.se/blog/Ethereum_quirks_and_vulns.html)
    * [Security Advisory (Implementation bugs in Go and Python clients can cause DoS – Fixed – Please update clients)](https://blog.ethereum.org/2015/09/02/security-advisory-implementations-bugs-in-go-and-python-clients-can-cause-dos/)
    * [A hacker stole $31M of Ether — how it happened, and what it means for Ethereum](https://www.freecodecamp.org/news/a-hacker-stole-31m-of-ether-how-it-happened-and-what-it-means-for-ethereum-9e5dc29e33ce/)
    * [Parity Multisig Hacked. Again](https://medium.com/chain-cloud-company-blog/parity-multisig-hack-again-b46771eaa838)
      * [The Multi-sig wallet](https://github.com/openethereum/openethereum/blob/b640df8fbb964da7538eef268dffc125b081a82f/js/src/contracts/snippets/enhanced-wallet.sol)
    * [An In-Depth Look at the Parity Multisig Bug](https://hackingdistributed.com/2017/07/22/deep-dive-parity-bug/)
    * [An Ethereum Roulette](https://swende.se/blog/Breaking\_the\_house.html)
    * [Predicting Random Numbers in Ethereum Smart Contracts](https://blog.positive.com/predicting-random-numbers-in-ethereum-smart-contracts-e5358c6b8620)
    * [Scanning Live Ethereum Contracts for the "Unchecked-Send" Bug](https://hackingdistributed.com/2016/06/16/scanning-live-ethereum-contracts-for-bugs/)
    * [Multiple withdrawal attack](https://blockchain-projects.readthedocs.io/multiple\_withdrawal.html)
      * [Resolution on the EIP20 API Approve \/ TransferFrom multiple withdrawal attack](https://github.com/ethereum/EIPs/issues/738)
      * [ERC20 API: An Attack Vector on Approve\/TransferFrom Methods](https://docs.google.com/document/d/1YLPtQxZu1UAvO9cZ1O2RPXBbT0mooh4DYKjA\_jp-RLM/edit#heading=h.m9fhqynw2xvt)
    * [Implementing Ethereum trading front-runs on the Bancor exchange in Python](https://hackernoon.com/front-running-bancor-in-150-lines-of-python-with-ethereum-api-d5e2bfd0d798)
      * [Frontrunning Bancor — DevCon3 (Ethereum Developers Conference)](https://youtu.be/RL2nE3huNiI)
      * [Bancor](https://www.bancor.network/)
    * [GovernMental's 1100 ETH jackpot payout is stuck because it uses too much gas](https://www.reddit.com/r/ethereum/comments/4ghzhv/governmentals\_1100\_eth\_jackpot\_payout\_is\_stuck/)
      * [GovernMental](http://governmental.github.io/GovernMental/)
    * [Can a contract safely rely on block.timestamp?](https://ethereum.stackexchange.com/questions/413/can-a-contract-safely-rely-on-block-timestamp?utm\_medium=organic&utm\_source=google\_rich\_qa&utm\_campaign=google\_rich\_qa)
    * [Hacking Rubixi](https://bitcointalk.org/index.php?topic=1400536.60)
      * [Rubixi](https://etherscan.io/address/0xe82719202e5965Cf5D9B6673B7503a3b92DE20be\#code)
    * [Storage Allocation Exploits in Ethereum Smart Contracts](https://medium.com/cryptronics/storage-allocation-exploits-in-ethereum-smart-contracts-16c2aa312743)
      * [How does this honeypot work? It seems like a private variable gets overwritten by another.](https://www.reddit.com/r/ethdev/comments/7wp363/how\_does\_this\_honeypot\_work\_it\_seems\_like\_a/)
      * [OpenAddressLottery](https://etherscan.io/address/0x741f1923974464efd0aa70e77800ba5d9ed18902\#code     
    * [An analysis of a couple Ethereum honeypot contracts](https://medium.com/coinmonks/an-analysis-of-a-couple-ethereum-honeypot-contracts-5c07c95b0a8d)
      * [CryptoRoulette](https://etherscan.io/address/0x8685631276cfcf17a973d92f6dc11645e5158c0c\#code)
    * [Ethereum Contracts Are Going To Be Candy For Hackers](https://vessenes.com/ethereum-contracts-are-going-to-be-candy-for-hackers/)
      * [Ethstick](https://etherscan.io/address/0xbA6284cA128d72B25f1353FadD06Aa145D9095Af\#code)
    * [Solidity: Tx Origin Attacks](https://medium.com/coinmonks/solidity-tx-origin-attacks-58211ad95514)
      * [Tx.Origin And Ethereum Oh My!](https://vessenes.com/tx-origin-and-ethereum-oh-my/)
      * [What's the difference between 'msg.sender' and 'tx.origin'?](https://ethereum.stackexchange.com/questions/1891/whats-the-difference-between-msg-sender-and-tx-origin)
        
  * _best programming practices_
    * [How to Secure Your Smart Contracts: 6 Solidity Vulnerabilities and how to avoid them Part I](https://medium.com/loom-network/how-to-secure-your-smart-contracts-6-solidity-vulnerabilities-and-how-to-avoid-them-part-1-c33048d4d17d)
    * [How to Secure Your Smart Contracts: 6 Solidity Vulnerabilities and how to avoid them Part II](https://medium.com/loom-network/how-to-secure-your-smart-contracts-6-solidity-vulnerabilities-and-how-to-avoid-them-part-2-730db0aa4834)
    * [How can I securely generate a random number in my smart contract?](https://ethereum.stackexchange.com/questions/191/how-can-i-securely-generate-a-random-number-in-my-smart-contract)
      * [randao](https://github.com/randao/randao)
    * [Solidity security patterns - forcing ether to a contract](http://danielszego.blogspot.com/2018/03/solidity-security-patterns-forcing.html)
    * [Solidity Security: Comprehensive list of known attack vectors and common anti-patterns](https://blog.sigmaprime.io/solidity-security.html)
    * [Ethereum, Solidity and integer overflows: programming blockchains like 1970](https://randomoracle.wordpress.com/2018/04/27/ethereum-solidity-and-integer-overflows-programming-blockchains-like-1970/)
    * [Ethereum Smart Contract Security Best Practices](https://consensys.github.io/smart-contract-best-practices/)
    * [Solidity security considerations](https://solidity.readthedocs.io/en/latest/security-considerations.html)
    
  * _reusable contracts or libraries_
    * [OpenZeppelin suite](https://openzeppelin.com/)
      * [OpenZeppelin contracts](https://github.com/OpenZeppelin/openzeppelin-contracts)
      * [OpenZeppelin](https://docs.openzeppelin.com/openzeppelin/)
      * [OpenZeppelin SDK](https://openzeppelin.com/sdk)
    * [ds-math](https://github.com/dapphub/ds-math)
    * [ethPM](https://www.ethpm.com/)
      * [ethpm](https://github.com/ethpm)

  * _hacking practices_
    * [ethernaut](https://ethernaut.openzeppelin.com/)
      * [Ethernaut source code](https://github.com/OpenZeppelin/ethernaut)
    * [overthewire security wargames](https://overthewire.org/)
    * [Underhanded Solidity Coding Contest](https://github.com/Arachnid/uscc)
    * [Tricked by a honeypot contract or beaten by another hacker. What happened?](https://www.reddit.com/r/ethdev/comments/7x5rwr/tricked\_by\_a\_honeypot\_contract\_or\_beaten\_by/)
      * [the honeypot](https://etherscan.io/address/0x95d34980095380851902ccd9a1fb4c813c2cb639\#code)
    * [The ERC20 Short Address Attack Explained](https://vessenes.com/the-erc20-short-address-attack-explained/)
    * [ICO Smart contract Vulnerability: Short Address Attack](https://medium.com/huzzle/ico-smart-contract-vulnerability-short-address-attack-31ac9177eb6b)
      * [Can't understand the ERC20 short address attack](https://www.reddit.com/r/ethereum/comments/6r9nhj/cant\_understand\_the\_erc20\_short\_address\_attack/)
    * [Blockhashes Are Only Good For 256 Blocks](http://aakilfernandes.github.io/blockhashes-are-only-good-for-256-blocks)
      * [contract Lotto](https://github.com/etherpot/contract/blob/master/app/contracts/lotto.sol)
    * [King of the Ether](https://www.kingoftheether.com/thrones/kingoftheether/index.html)
      * [Post-Mortem Investigation (Feb 2016)](https://www.kingoftheether.com/postmortem.html)
    * [To Sink Frontrunners, Send in the Submarines](https://hackingdistributed.com/2017/08/28/submarine-sends/)
      * [Ethereum naming service](https://ens.domains/)


* __Dapps security__
  * [Decentralized Application Security Project (or DASP) Top 10 of 2018](https://www.dasp.co/)

* __Hyperledger security__

* __IPFS security__

* __Swarm security__
