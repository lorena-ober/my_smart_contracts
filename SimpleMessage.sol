// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleMessage {
    string private message;

    // Postavljanje početne poruke
    constructor(string memory _message) { 
        message = _message; 
    }
    /*
    - constructor se može pozvati samo jednom priliom deploya ugovora na blockchain
    - korisnik postavlja string, odnosno poruku koju constructor pamti i sprema u varijablu message
    (trajno na blockchain) jer se memory brise nakon izvrsavanja funkcije, a message je storage varijabla
    */



    // Funkcija za čitanje poruke - view jer ne mijenja stanje blockchaina
    function getMessage() public view returns (string memory) {
        return message; //vraca stringove spremljene u varijabli message
    }

    // Funkcija za postavljanje nove poruke - korisnici mogu promijeniti vrijednost message varijable
    function setMessage(string memory _newMessage) public {
        message = _newMessage; //prima  string _newMessage i sprema ga u varijablu message, memory samo privremeno cuva podatke
    }
}