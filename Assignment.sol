// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    // Public variables
    string public tName = "DOGECOIN";
    string public tAbbrv = "Doge";
    uint public tSupply = 0;

    // Mapping of addresses to balances
    mapping(address => uint) public balances;

    // Mint function
    function mint(address _address, uint _value) public {
        tSupply += _value;
        balances[_address] += _value;
    }

    // Burn function
    function burn(address _address, uint _value) public {
        if (balances[_address] >= _value) {
            tSupply -= _value;
            balances[_address] -= _value;
        }
    }
}
