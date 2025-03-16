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

### **MyToken** (Deployan na Amoy testnetu)
Pametni ugovor koji definira QuackCoin 🦆 (QUACK), prilagođeni ERC-20 token s mogućnostima mintanja, spaljivanja i prijenosa tokena.
🔗 **Deployani ugovor:** [Amoy Polygon Testnet](https://amoy.polygonscan.com/address/0x784ed7c8e159ea7bd60651f646a631b6cc84a0d8#readContract)

**Funkcionalnosti tokena:**
Minting → Izdavanje novih tokena (samo owner može mintati).
Burning → Spaljivanje tokena kako bi se smanjila ukupna cirkulacija.
Transferi → Slanje tokena drugim korisnicima.
Allowance & Approval → Dopuštanje drugoj adresi da troši određenu količinu tokena u ime vlasnika.
TransferFrom → Omogućava trećoj strani prijenos tokena uz prethodno odobrenje vlasnika.
Ownership Management → Mogućnost prijenosa vlasništva nad ugovorom.

### **Budući projekti**
- **Mini društvena mreža** (Uskoro) → Decentralizirana platforma gdje korisnici mogu slati poruke.
- **Pametni ugovori na Solana blockchain mreži** (Planirano) → Istraživanje Solana mreže radi jeftinijeg i skalabilnog izvođenja pametnih ugovora.
