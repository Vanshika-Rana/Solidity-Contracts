// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract Todo{
     mapping(address => string[]) todos;

    // adding todos 
    function addTodo(string memory _todo) public{
        todos[msg.sender].push(_todo);
    }
    // deleting todos: This just deletes the element and doesn't repositions 
    function delTodo(uint idx) public{
        require(idx < todos[msg.sender].length);
        delete todos[msg.sender][idx];
        todos[msg.sender][idx] = todos[msg.sender][todos[msg.sender].length - 1];
        delete todos[msg.sender][todos[msg.sender].length - 1];
        todos[msg.sender].pop();
        
    }
    // getting todos
    function getTodo() public view returns(string[] memory, uint){
        return(todos[msg.sender], todos[msg.sender].length);
    }
}