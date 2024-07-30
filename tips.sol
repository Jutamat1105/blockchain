// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract tips {
    address owner;
    constructor(){
        owner = msg.sender;
    }

    //1.หยอดเงินเข้าไปในกระปุก

    function addtips() payable public {

    }

    //2.เช็คเงินในกระปุก
    
    function viewtips() public view returns (uint){
        return address(this).balance;
    }

    //3. add User
    
   

   }