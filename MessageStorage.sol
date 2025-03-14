// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; //uputa kompajleru koju verziju Solidityja da koristi
//^0.8.0 - bilo koja 0.8.x verizija ali da nije starija od 0.8. i novija od 0.9.0

contract MessageStorage { //kao klasa u OOP(java npr.)
    string[] private messages;
    /*
    jednodimenzionalni niz stringova tj. poruka
    private - varijabla nije vidljiva izvan ugovora
            - njoj mogu pristupiti samo funkcije koje se nalaze unutar ugovora
    messages - naziv niza u koji će se spremati stringovi odnosno poruke


    */

    // Funkcija za spremanje nove poruke
    function storeMessage(string memory _message) public {
    messages.push(_message);
    }
    /*
    storeMessage - naziv funkcije koja ce spremati poruke - nazivi isto camelCase kao kod Jave
    (string memory _message) - ulazni parametar funkcije koji ocekuje jedan string (poruku) od korisnika kad on pozove tu funkciju
        string - tip podatka - poruka
        memory - specifikacija gdje se ta poruka pohranjuje - konkretno to je privremena memorija koja traje samo prilikom izvršavanja funkcije - nakon izvšenja funkcije storeMessage, _message više ne postoji u memoriji, ali postoji u nizu messages[] jer njega čuva blockchain
        _message - naziv samog parametra koji se koristi unutar funkcije
    public - funkcija je javno vidljiva i dostupna - mora biti da korisnici mogu dodavati poruke
    messages.push(_message) - ovo je logika funkcije - ona gura dodanu poruku/element na kraj niza messages
    */




    // Funkcija za dohvaćanje svih napisanih poruka
    function getMessages() public view returns (string[] memory){
        return messages;
    }
    /*
    funckija getMessages() bez ulaznih parametara
    - nema ulaznih parametara jer ona samo dohvaca podatke tj. elemente niza, ne mijenja ih
    
    public - javno dostupna

    view - funkcija samo cita podatke i ne mijenja stanje blockchaina - ne dodaje podatke u blockchain i zbog toga ne trosi gas poput funkcija koje mijenjaju stanje blockchaina(gornja funkcija)

        - imaju i pure funkcije koje ne samo da ne mijenjaju stanje blockchaina nego ni ne citaju podatke, samo racunaju nesto npr.
    
    returns(string[] memory) - vraca niz stringova tj. poruka
    - ne mozemo napisati messages[] memory po samom nazivu niza jer to nije tip podatka, samo naziv kojim pozivamo niz stringova 
        - funkcija uvijek mora definirati tip podatka povratne vrijednosti a ne ime same varijable/niza

    return messages - vraca sve elemente iz niza messages
     */



    // Funkcija za dohvaćanje broja spremljenih poruka
    function getMessageCount() public view returns (uint) {
        return messages.length;
    }

    /*
    funkcija istog tipa kao i prosla
    uint - vraca uint sto je unsigned integer - cijeli broj bez negativnih vrijednosti, dakle pozitivan broj 0 ili veci
        - int je signed integer i moze biti + ili -
        - koristimo uint jer broj poruka nikada ne moze biti negativan, biti ce 0 ili veci, te trosi manje gasa jer se ne mora provjeravati je li - ili +

    return messages.length - vraca samo broj elemenata u nizu messages
    */

}



