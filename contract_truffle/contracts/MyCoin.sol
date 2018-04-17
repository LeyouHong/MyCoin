pragma solidity ^0.4.11; //版本限制，0.4.11以前版本不可用

contract MyCoin {
        mapping (address => uint256) public balanceOf;


        function MyCoin() {
                balanceOf[msg.sender] = 300000000;
        }

        function getBalanceOf(address addr) returns (uint256) {  //提款
                return balanceOf[addr];
        }

        function transfer(address _from, address _to, uint256 _value) { //转账
                require(balanceOf[_from] >= _value);
                require(balanceOf[_to] + _value >= balanceOf[_to]);

                balanceOf[_from] -= _value;
                balanceOf[_to] += _value;
        }
}
