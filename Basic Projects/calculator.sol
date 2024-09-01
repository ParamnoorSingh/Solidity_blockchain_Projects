// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract calculator {

    uint256 result = 0;

    function add(uint256 num) internal {
        result += num; // yhis func will not show in deployment as it can be used only internally or you can say it is abstract

    }

    function subtract(uint num) external {
        result -= num;
    }

    function multiply(uint256 num) public {
        result *= num ; 
       // subtract(num); it throws error as subtract is external and cannot be used within contract
    }

    function get() public view returns (uint256) {
        return result;
    }

}
 