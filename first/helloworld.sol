// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

contract MyHellWorldContract{
    string public myFirstGetter = "Hi Learner";
    uint256 public myFirstNumGetter = 5;
    constructor(string memory _mySetterString, uint  _mySettingNumber){
        myFirstGetter = _mySetterString;
        myFirstNumGetter = _mySettingNumber;

    }
    function setToState(string memory _mySetterString, uint  _mySettingNumber)public {
        myFirstGetter = _mySetterString;
        myFirstNumGetter = _mySettingNumber;

    }

}