# Doc-approval-solidity-smart-contract

Remix IDE (Integrated Development Environment) is a web application that can be used to write, debug, and deploy Ethereum Smart Contracts. When you want to write Smart Contracts, you can use this application.
Using Remix IDE is actually quite easy!

## Tools
Smart Contract
Solidity, Remix, Metamask
## Prerequisites

1. How to Use Metamask
2. Basic Solidity

## Creating the Smart Contract
Since we really don’t need a complex Smart Contract, we’ll just make one under default workspace. Our Smart Contract will be made using Solidity.
In Remix, create a new file named Wallet.sol. To create a file, click the Create New File button at the top left corner of the page:

https://remix.ethereum.org/#optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.4+commit.c7e474f2.js

After the file is created, add the contract code to the code editor

## Compiling and Deploying Contracts

After writing the Smart Contract, we should compile the code to check if there are errors or warnings. If there are no any errors, the Smart Contract is ready to be deployed.

## Compiling a Contract

To compile a Smart Contract, go to the Compile Tab and select the compiler version and select the appropriate version that is suitable to your Solidity version (in our tutorial, we will use 0.5.3+commit.10d17f24 since we used Solidity 0.5.3). 

After settings the options, click the Start to compile button, a success message or a list of errors will show below it

If there are no errors, a box with a green color, then the Smart Contract is successfully compiled. You can now deploy the code or get the ABI. The ABI is basically a specification in the form of a JSON, that describes the contract. This is very important when you want to deploy your contract to your applications.

Deploying a Contract
After successfully compiling your contract, you can now deploy it. Deploying a contract will let you test it and use it to your applications. Go to the Run Tab located at the side of the Compile Tab:

Set the options first at the top part of the tab. Here are what you need to know about the options before you run a contract:
## JavaScript VM - '
 The instance will be deployed in a sandbox blockchain in the browser. This means nothing will be saved when the page reloads, a new instance will be created.
## Injected Provider - 
 Remix will connect to an injected web3 provider. Metamask and Mist are example of injected web3 providers.
## Web3 Provider - 
 Remix will connect to a remote instance. You will need to provide the URL address of your selected provider.
## Account - 
the list of accounts that will be associated with the current instance.
## Gas Limit - 
the maximum gas amount of each transaction.
## Value - 
the amount of value for the next created transaction.

Since we will use the Metamask to deploy our contract, we will select the Injected Provider for the Environment and leave the other options to default. Then click the Deploy button to deploy the contract. A Metamask window will appear and you will need to confirm to deploy the contract.

Use any test network, like ropston or rinkeby to pay.

After the contract is deployed, the instance will show up at the bottom of the tab and you will be able to access the functions.

After testing, you can also copy the Smart Contract’s instance address using the copy button beside the address. This address basically tells where your contract is running. Along with the ABI, these two are the required contract information that will be used to connect the contract to your applications.
And we’re done. We’ve created a Smart Contract, compiled it, then deployed it.
