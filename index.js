//1. Create a variable to hold your NFTs
let nfts = []; //the array to hold all the NFTs

//2. Create a mintNFT function that takes parameters and stores the NFT object
function mintNFT(name, artist, dateCreated, rarity) {
    // Create an NFT object with metadata
    let nft = {
        name: name,
        artist: artist,
        dateCreated: dateCreated,
        rarity: rarity
    };

    // Store the NFT object in the array
    nfts.push(nft);
}

//3. Create a listNFTs function to print all NFT metadata to the console
function listNFTs() {
    for (let i = 0; i < nfts.length; i++) {
        console.log("Name: " + nfts[i].name);
        console.log("Artist: " + nfts[i].artist);
        console.log("Date Created: " + nfts[i].dateCreated);
        console.log("Rarity: " + nfts[i].rarity);
        console.log("----------------------");
    }
}

//4. Create a getTotalSupply function to return the number of NFTs minted
function getTotalSupply() {
    return nfts.length;
}

//5. Call your functions below this line

// mint some NFT's (not user input)
mintNFT("POGO", "Alice Guo", "2024-04-19", "Rare");
mintNFT("KOJC", "Quiboloy", "2024-08-23", "Legendary");
mintNFT("Davao", "Sara", "2023-02-23", "Common");
//list all NFTs
listNFTs();

//total number of NFTs count
console.log("Total Supply: " + getTotalSupply());
