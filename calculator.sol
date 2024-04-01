// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract calculator{

    uint256 private currentValue;

    constructor(){
        currentValue = 0;
    }

    function getCurrentValue() public view returns (uint256){
        return currentValue;
    }

    function add (uint256 value) public{
        currentValue += value;
    }

    function subtract (uint256 value) public{
        require(value <= currentValue, "Subtraction result would be negative");
        currentValue -= value;
    }

    function multiply (uint256 value) public{
        currentValue *= value;
    }

    function divide (uint256 value) public{
        require(value>0, "Cannot divide by 0.");
        currentValue /= value;
    }
}
