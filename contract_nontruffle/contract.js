//compile
fs = require('fs');
const solSource = fs.readFileSync('MyCoin.sol').toString()
solc = require('solc')
const solCompiled = solc.compile(solSource)

Web3 = require('web3')
//deploye
web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"))
abiInfo = JSON.parse(solCompiled.contracts[':MyCoin'].interface)
byteCode = solCompiled.contracts[':MyCoin'].bytecode
coinContract = web3.eth.contract(abiInfo)
deployed = coinContract.new({data: byteCode, from: web3.eth.accounts[0], gas: 3000000})

