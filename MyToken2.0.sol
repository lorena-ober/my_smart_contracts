// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract QuackCoin is ERC20Burnable, Ownable {
    string private _tokenURI;  // URL slike tokena

    constructor(uint256 initialSupply, string memory tokenURI_) ERC20("QuackCoin", "QUACK") Ownable(msg.sender){
        _mint(msg.sender, initialSupply * (10 ** decimals()));
        _tokenURI = tokenURI_;
    }

    // Funkcija za mintanje novih tokena (samo vlasnik)
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Postavljanje novog URL-a slike tokena (samo vlasnik)
    function setTokenURI(string memory newTokenURI) public onlyOwner {
        _tokenURI = newTokenURI;
    }

    // Dohvaćanje URL-a slike tokena
    function tokenURI() public view returns (string memory) {
        return _tokenURI;
    }
}