// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;


contract Enum
{
    enum user{allowed,not_allowed,wait}
    // Enums can be used to create custom types with a finite set of ‘constant values’.

    user public u1 = user.allowed;

    uint public lottery = 1000;

    function owner() public{
        if(u1==user.allowed){
            lottery = 0;
        }
    }

    function changeOwner() public{
        u1 = user.not_allowed;
        lottery = 1000;
    }
}