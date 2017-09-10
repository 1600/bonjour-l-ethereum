pragma solidity ^0.4.11;

contract mortal {
    address owner;

    function mortal() public {
        owner = msg.sender;
    }

    function kill() {
        if(owner == msg.sender) {
            selfdestruct(owner);
        }
    }
}

contract greeter is mortal {
    string greeting;

    function greeter () public {
        greeting = "Bonjour l'ethereum!";
    }

    function greet() constant returns (string) {
        return greeting;
    }
}