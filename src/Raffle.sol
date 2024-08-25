// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/** 
* @title A Simple Raffle Contract
* @author Waseem Ahmad
* @notice This contract allows users to participate in a simple raffle.
* @dev Implements Chainlint VRFv2.5
*/


contract Raffle {
    /** Errors */
    error Raffle__NotEnouughETHToEnterRaffle();

    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() public payable {
        if(msg.value < i_entranceFee) {
            revert Raffle__NotEnouughETHToEnterRaffle();
        }
    }

    function pickWinner() public {}

    /** Getter Functions */
    function getEntranceFee() external view returns(uint256) {
        return i_entranceFee;
    }
}
