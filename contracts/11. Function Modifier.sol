// SPDX-Identifier: MIT
pragma solidity ^0.8.17;

contract Piggybank {
    constructor()payable {
        owner = msg.sender 

    }
    receive() payable external {}
    function withdrawl() external {
        address payable Receiver = payable(msg.sender);
        Receiver.transfer(address(this).balance);
    }
}