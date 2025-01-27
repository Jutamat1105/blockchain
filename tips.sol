// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract tips {
    address owner;

    Waitress[] waitress;



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

    //3.1 add structure waitress
    struct Waitress{
        address payable walletAddress;
        string name;
    }

    //3.2 add waitress
    function addWaitress(address payable walletAddress,string memory name) public {
    bool waitressExist = false;

    if (waitress.length >=1){
    for (uint i=0; i<waitress.length; i++){
            if( waitress[i].walletAddress == walletAddress){
                waitressExist = true;
            }
            }

        }
        if(waitressExist==false){
            waitress.push(Waitress(walletAddress,name));
        }

    }

    //4.remove User

    //5. view User
    function viewWaitress() public  view returns  (Waitress[] memory) {
        return waitress;
    }
    
   //6. distribute tips

   }