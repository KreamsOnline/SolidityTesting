pragma solidity >=0.6.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

contract Bank {

    string public myPurpose = "This is my world";
    uint public Counting = 1;

    event SetPurpose(address sender, string purpose);
    event SetCounter(address sender, uint amount);

    constructor() {
        //.....
    }

    function dec() public {
        Counting--;
    }

    function decAmount(uint amount) public {
        Counting = Counting - amount;
        console.log(msg.sender, "Your new number is", Counting);
    }

    function inc() public {
        Counting++;
    }

    function incAmount(uint amount) public {
        Counting = Counting + amount;
        console.log(msg.sender, "Your new number is", Counting);
    }

    function setPurpose(string memory purpose) public {
        myPurpose = purpose;
        console.log(msg.sender, "Your new purpose is", myPurpose);
    }
}