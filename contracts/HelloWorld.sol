// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.0;

contract HelloWorld {

    address private owner;
    string private ownerEmail;
    string private message;

    constructor(string memory _ownerEmail, string memory _message) {
        owner = msg.sender;
        ownerEmail = _ownerEmail;
        message = _message;
    }

    function helloFromOwner() public view returns (string memory) {
        return string(abi.encodePacked("Hello from ", ownerEmail));
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    function setMessage(string memory _message) public returns (bool updated) {
        message = _message;
        return true;
    }
}