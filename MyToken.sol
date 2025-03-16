// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol"; //import funkcija pomocu OpenZeppelin standarda
import "./node_modules/@openzeppelin/contracts/access/Ownable.sol"; //ownable funkcionalnosti - samo vlasnik ugovora moze mintati nove tokene

contract MyToken is ERC20, Ownable { //ugovor MyToken nasljeđuje ERC20 (OpenZeppelin token standard) i Ownable (vlasnik ima posebne ovlasti)
    //konstruktor koji se poziva samo prilikom deploya ugovora, Ownable(msg.sender) - vlasnik ugovora je onaj koji ga je deployao
    constructor(uint256 initialSupply) ERC20("QuackCoin", "QUACK") Ownable(msg.sender){
        //mintanje pocetne kolicine supplyja na adresu vlasnika ugovora - 1,000,000+18 decimala(ERC20 tokeni koriste 18 decimala)
        _mint(msg.sender, initialSupply * (10 ** uint256(decimals())));
    }

    // Funkcija za mintanje novih tokena (može je pozvati samo vlasnik ugovora - onlyOwner) - dodaje novu kolicinu tokena na adresu korisnika
    //address to - salje se na adresu korisnika, uint256 amount - kolicina za mintanje, povecava total supply jer stvaramo nove tokene
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Funkcija za spaljivanje tokena (bilo tko može spaliti svoje tokene)
    //uint256 amount - kolicina tokena za burnanje
    //msg.sender - smanjuje saldo korisnika te smanjuje total supply jer spaljeni tokeni nestaju iz optjecaja
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}