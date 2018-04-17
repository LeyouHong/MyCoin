web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
contractABI = JSON.parse('填入info.backup中的interface数据');
contractAddress = '填入info.backup中的address数据';
coinContract = web3.eth.contract(contractABI);
contractInstance = coinContract.at(contractAddress);

function RefreshValueTable() {
	 accounts = web3.eth.accounts;
	  for (var i = 0; i < accounts.length; i++) {
		    let address = accounts[i]
			      let value = contractInstance.getBalanceOf.call(address).toString();
		      $("#address-"+i.toString()).html(address);
		        $("#value-"+i.toString()).html(value);
			 }
}

