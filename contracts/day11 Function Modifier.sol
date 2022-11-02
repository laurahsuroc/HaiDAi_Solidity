// SPDX-Identifier: MIT
pragma solidity ^0.8.17;

contract Piggybank {
    address public owner;
    modifier onlyOwner(){
        require(owner == msg.sender, "Only owner can sell this function");
        _;
    }
    constructor()payable {
        owner = msg.sender 

    }
    receive() payable external {}
    function withdrawl() external {
        address payable Receiver = payable(msg.sender);
        Receiver.transfer(address(this).balance);
    }
}