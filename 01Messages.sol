//SPDX-License-Identifier:MIT

pragma solidity ^0.8.1;

contract Messages{

    // Array to store messages
    string[] messages;
    // A function that adds messages to array
    function addMessages(string memory _messages) public{
        messages.push(_messages);
    }
    // A function that returns the array for you  :)
    function getMessages() public view returns(string[] memory){
        return messages;
    }

}
// Because Solidity cannot produce a random integer, 
// we will be unable to select a random message from the array here; 
// thus, we will return the entire array to the frontend and select a message at random from it there.