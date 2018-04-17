pragma solidity ^0.4.11; //版本限制，0.4.11以前版本不可用

contract MyCoin {
    mapping (address => uint256) public balanceOf;
    string public coinSymbol;

    function MyCoin(string symbol) {
        balanceOf[msg.sender] = 300000000;
        coinSymbol = symbol;
    }

    function getSymbol() returns (string) {
        return coinSymbol;
    }

    function transfer(address _from, address _to, uint256 _value) {
        require(balanceOf[_from] >= _value);
        require(balanceOf[_to] + _value >= balanceOf[_to]);

        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
    }

    function getBalanceOf(address addr) returns (uint256) {
        return balanceOf[addr];
    }
}
