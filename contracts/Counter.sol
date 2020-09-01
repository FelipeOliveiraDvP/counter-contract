// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract Counter {
    uint private count = 0;

    event CounterIncrement(string _message);
    event CounterDecrement(string _message);

    function increment() public {
        count += 1;
        emit CounterIncrement("Counter is incremented");
    }

    function decrement() public {
        count -= 1;
        emit CounterDecrement("Counter is decremented");
    }

    function getCount() public view returns (uint) {
        return count;
    }
}