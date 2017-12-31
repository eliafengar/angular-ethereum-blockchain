pragma solidity ^0.4.18;
// We have to specify what version of compiler this code will compile with

contract Counter {

  uint8 public counts;

  function Counter() public {

  }

  function getCounts() view public returns (uint8) {
    return counts;
  }

  function increment() public {
    counts += 1;
  }

  function decrement() public {
    counts -= 1;
  }

}