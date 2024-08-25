// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/** 
* @title A Simple Raffle Contract
* @author Waseem Ahmad
* @notice This contract allows users to participate in a simple raffle.
* @dev Implements Chainlint VRFv2.5
*/

contract Raffle {
    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() public payable {

    }

    function pickWinner() public {}

    /** Getter Functions */
    function getEntranceFee() external view returns(uint256) {
        return i_entranceFee;
    }
}
