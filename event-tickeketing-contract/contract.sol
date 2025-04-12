// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract EventSmartContract {
    uint public ticketPrice;
    uint public totalAmountRaised;
    uint public numberOfTicketSold;
    uint public startDate;
    uint public endDate;
    uint public ticketTimeRange;
    string public message = "BUY THE TICKET FOR MY CONCERT";
    address owner;
    /// The event has already ended.
    error EventAlreadyEnded();
    /// There is already a higher or equal bid.
    error AmountNotHighEnough(uint expectedAmount);
    /// The auction has not ended yet.

    constructor(uint _ticketPrice) {
        ticketPrice = _ticketPrice;
        startDate = block.timestamp;
        endDate = startDate + 7 days;
        ticketTimeRange = (endDate - startDate) / 60 / 60 / 24;
    }

    function buyConcertTicket(uint amount, uint totalTicket) public payable {
        uint expectedAmount = totalTicket * ticketPrice;
        if (amount < expectedAmount) {
            revert AmountNotHighEnough(expectedAmount);
        }
        if (amount < expectedAmount) {
            revert AmountNotHighEnough(expectedAmount);
        }

        if (block.timestamp > endDate) {
            revert EventAlreadyEnded();
        }

        if (amount > expectedAmount) {
            uint balance = amount - expectedAmount;
            payable(msg.sender).transfer(balance);
        }
        for (uint i = 0; i < totalTicket; i++) {
            buyTicket();
        }
    }

    function buyTicket() private returns (uint ticketId) {
        numberOfTicketSold += 1;
        totalAmountRaised += ticketPrice;
        ticketId = numberOfTicketSold;
    }
}
