# AngularEthereumBlockchain

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 1.6.3.

## Purpose & Description
The Project aims to show the way to develop Ethereum DApp(Decentralized App) as a Standard Web Application utilizing Angular 5 as the Frontend Framework.

A Counter contract being deployed to ethereum blockchain network, simply increment and decrement operations provided to interact with the blockchain.

## Prerequisites
Ethereum blockchain web3js library 0.20.1

Ethereum local development server, ethereumjs-testrpc library 6.0.3

For Solidity contract compilation, solc library 0.4.19

Install required libraries with "npm install ethereumjs-testrpc solc web3@0.20.1"

## Deploy Contract to ethereum blockchain network
Open node console

Web3 = require('web3')

web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));

code = fs.readFileSync('src/contracts/Counter.sol').toString()

solc = require('solc')

compiledCode = solc.compile(code)

abiDefinition = JSON.parse(compiledCode.contracts[':Counter'].interface)

CounterContract = web3.eth.contract(abiDefinition)

byteCode = compiledCode.contracts[':Counter'].bytecode

deployedContract = CounterContract.new({data: byteCode, from: web3.eth.accounts[0], gas: 4700000})

contractInstance = CounterContract.at(deployedContract.address)


### Test contract deployed and working properly

contractInstance.getCounts.call()

contractInstance.increment({from: web3.eth.accounts[0]})

## Development server

### For Ethereum Development.
Run ./node_modules/.bin/testrpc for a dev server.

### For Angular Development
Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `-prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).
