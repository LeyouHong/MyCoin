node
solSource = fs.readFileSync('ShiyanCoin.sol').toString()
solc = require('solc')
solCompiled = solc.compile(solSource)

合约接口信息，可通过solCompiled.contracts[':MyCoin'].interface获取
合约可执行代码，可通过solCompiled.contracts[':MyCoin'].bytecode获取

Web3 = require('web3')
web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"))

abiInfo = JSON.parse(solCompiled.contracts[':ShiyanCoin'].interface)
byteCode = solCompiled.contracts[':ShiyanCoin'].bytecode

coinContract = web3.eth.contract(abiInfo)
deployed = coinContract.new({data: byteCode, from: web3.eth.accounts[0], gas: 3000000})

deployed.address
deployed.getBalanceOf.call(web3.eth.accounts[0]).toString()
