// a function is  a group of code that can be reused anywhere in the program, 
// which generally saves the excessive use memory and decrease the runtime. 

// Declarative & non-declarative 

// function function_name(parameter list) scope returns(return_type){
//  the core functionality of the function
// }


// Other types of functions
// 1. Modifying state variable
// 2. Emitting events
// 3. Creating other contract
// 4. Using self-destruct
// 5. Sending Ether via calls
// 6. mark pure or view
// 7. assembly certain opcodes
// 8. using low-level calls


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract ImplementingFunction{

uint256 stateVariable;

function fetchStateVariableData() public view returns(uint256){
return stateVariable;
}
function setStateVariableData(uint256 _incomingData) public {
 stateVariable = _incomingData;
}

function sumOfYourNumber(uint256 _incomingFirstNumber,uint256 _incomingSecondNumber ) public pure returns(uint256){
 return _incomingFirstNumber + _incomingSecondNumber;
}
}

