//SPDX-License-Identifier: MIT
pragma solidity  0.8.19;
//ETH-Proof beginner final project

contract myToken{
   //state variable
    string public tokenName="Zeol";
    string public tokenAbbrv="Zl";
    uint public totalSupply=0;

//mapping function
    mapping(address=>uint) public balance;

 //function to mint token
 function mint (address _addr,uint _value) external{
    totalSupply+=_value;
    balance[_addr]+=_value;
  }
 
 //funtion to burn token
  function brun(address _addr,uint _value) external {
   if(balance[_addr]>=_value){
       totalSupply-=_value;
       balance[_addr]-=_value;
   }
  }

  }