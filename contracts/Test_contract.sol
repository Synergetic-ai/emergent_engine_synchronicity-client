pragma solidity ^0.8.0;

// SPDX-License-Identifier: MIT

// data types 

/*
An array of values: from 0 to 100;
for Evil
0-25: unkind  
26-50: cruel
51-75:sadistic 
76-100: inhumane

For Good
0-25: decent    
26-50: moral
51-75: virtuous 
76-100: saint
*/

contract test {
    // player username
    string public username;

    // player wallet address
    address public playerAddress;

    // player evil scrore
    uint public evilScore;

    // player good score 
    uint public goodScore;

    // GE index; An average of a players good and evil value  
    uint public GE_average;

    constructor(string memory _name) {
        username = _name;
        playerAddress = msg.sender;
    }
   // map from player address to goodScore
    mapping(address => uint) public playerGoodness;

    // map from player address to evilScore
    mapping(address => uint) public playerEvilness;

    // map from player address to GE_average
    mapping(address => uint) public playerGeAverage;
    // set player evilScore
    function setEvilScore(uint _evilScore) public returns(uint){
        evilScore = _evilScore;
        return evilScore; 
    } 
    // set player goodScore 
    function setGoodScore(uint _goodScore) public returns(uint) {
        goodScore = _goodScore;
        return goodScore;
    } 
    // calculate GE_index
    function getGE_average() public returns(uint) {
        GE_average = (evilScore + goodScore) / 2;
        return GE_average;
    }
    // map player address to goodScore
    function mapPlayerGoodScore() public{
        playerGoodness[msg.sender] = goodScore;
    }
    // map player address to evilScore
    function mapPlayerEvilScore() public{
        playerEvilness[msg.sender] = evilScore;
    }
    // map player address to GE_average
    function mapPlayerGeAverage() public{
        playerGeAverage[msg.sender] = GE_average;
    }

}


