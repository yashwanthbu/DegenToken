# Degen Token in Avalanche Fuji Testnet

Simple overview of a contract with an in-game store which is deployed to the avalanche fuji testnet.

## Description

In this project, we have created our own smart contract which contains an in-game store which has 5 items . In our game, you are able to do a lot of things like mint, burn, transfer, approve, redeem, transfer , etc. This contract is then deployed onto to the avalanche fuji testnet which is then verified . The interaction is shown in the loom video.

## Getting Started

### Executing program

* Firstly, you need to connect to the avalanche fuji testnet in your metamask .
* RPC URL- 'https://api.avax-test.network/ext/bc/C/rpc'
* Chain ID-43113
* Then you need to import account to get test tokens by entering the private key.
* Connect metamask in your remix ide and call the deployed contract
* In order to deploy the contract and get the address, type the below command in your project directory:
  ```
  npx hardhat run scripts/deploy.js --network fuji
  ```
* In order to verify the contract , run the below command:
  ```
  npx hardhat verify <contractaddress> --network fuji
  ```

## Authors

Yashwanth BU

[yashwanthbuu@gmail.com]


## License

This project is licensed under the [MIT] License - see the LICENSE.md file for details
