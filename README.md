# my_smart_contracts

Ovaj repozitorij sadrži pametne ugovore koje sam razvila i implementirala na blockchain mrežama. Cilj ovog repozitorija je eksperimentiranje, učenje i razvoj Web3 aplikacija.

## Uključeni pametni ugovori:
### **Message Storage** (Deployan na Sepolia testnetu)
Jednostavan Solidity pametni ugovor koji omogućuje pohranu i dohvaćanje poruka na blockchainu.  
🔗 **Deployani ugovor:** [Sepolia Etherscan](https://sepolia.etherscan.io/address/0x784ed7c8e159ea7bd60651f646a631b6cc84a0d8)  

**Funkcije:**
- `storeMessage(string memory _message) public` → Sprema poruku na blockchain.
- `getMessages() public view returns (string[] memory)` → Dohvaća sve spremljene poruke.
- `getMessageCount() public view returns (uint)` → Prikazuje ukupan broj poruka.

### **Simple Message** (Deployan na Sepolia testnetu)
Jednostavan Solidity pametni ugovor koji omogućuje postavljanje početne poruke (pomoću konstruktora), njeno dohvaćanje i izmjenu. 
🔗 **Deployani ugovor:** [Sepolia Etherscan](https://sepolia.etherscan.io/address/0x3d2a7859178303e7420e18b03bedf2d1582e1b2c)

**Funkcije:**
- `function getMessage() public view returns (string memory) ` → Funkcija za čitanje poruke.
- `function setMessage(string memory _newMessage) public` → Funkcija za izmjenu poruke.

### **Budući projekti**
- **Mini društvena mreža** (Uskoro) → Decentralizirana platforma gdje korisnici mogu slati poruke.
- **Pametni ugovori na Polygon i Solana blockchain mrežama** (Planirano) → Istraživanje Polygon i Solana mreže radi jeftinijeg i skalabilnog izvođenja pametnih ugovora.
