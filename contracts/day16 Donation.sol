//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.17;

contract Donation {
    address public owner;
    mapping(address => uint256) donationList;
    
    event Donate(address indexed sender, uint256 value);
    event Withdrawl(address indexed owner, uint256 value);

    modifier onlyOwner(){
        require(msg.sender == owner, "Only owner can access this function");
        _; 
    }

    constructor(){
        //將合約擁有者設定成建立的人
        owner = msg.sender;
    }

    // 收受捐款的函式
    function donate() public payable {
        donationlist[msg.sender] += msg.value;
        emit Donate(msg.sender, msg.value);
    }
    
    // 查詢捲款總金額
    function getHistory() public view returns (uint256) {
      return donationList[msg.sender];
    }

    // 查詢VIP等級
    function getRank() public view returns (string memory) {
        if (donationList [msg.sender] > 10 ehter) {
            return "UR";
        } else if (donationList[msg.sender] > 5 ether)
                   return "SR";
        } else if (donationList[msg.sender] > 1 ether)
                   return "R";
        } else if (donationList[msg.sender] > 0 ether)
                   return "N";
        } else {
            return "None";
    }
    
    // 提領餘額
    function withdrawl() onlyOwner public {
        address payable receiver = payable (owner);
        uint256 value = address(this).balance;
        receiver.transfer(value);
        emit Withdrawl(receiver, value) 
    }


}