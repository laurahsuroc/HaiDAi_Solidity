// SPDX-Identifier: MIT
pragma solidity ^0.8.17;

contract Piggybank {
    address public owner;
    event Create(address owner, uint256 value);
    event Receive(address indexed sender, uint256 value);
    event withdrawl(address owner, uint256 value);
    
    modifier onlyOwner(){
        require(owner == msg.sender, "Only owner can sell this function");
        _;
    }
    constructor()payable {
        owner = msg.sender 
        emit Create(owner, msg.value);

    }
    receive() payable external {
        emit Receiver( msg.sender, msg value);
    }
    function withdrawl() external {
        address payable Receiver = payable(msg.sender);
        uint256 value = address(this).balance;
        Receiver.transfer(address(this).balance);
        Receiver.transfer(value)
        emit withdrawl(Receiver, value);
    }
}