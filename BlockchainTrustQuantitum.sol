// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BlockchainTrustQuantitum is ERC20, ERC20Burnable, Ownable {
    string private _tokenURI;

    constructor(address initialOwner) ERC20("Blockchain Trust Quantitum", "BTQ") Ownable(initialOwner) {
        _mint(initialOwner, 1000000000 * 10 ** decimals());
        _tokenURI = "ipfs://QmdDeYh..."; // eventueel IPFS-link
    }

    function burn(uint256 amount) public override {
        super.burn(amount);
    }

    function setTokenURI(string memory newTokenURI) public onlyOwner {
        _tokenURI = newTokenURI;
    }

    function tokenURI() public view returns (string memory) {
        return _tokenURI;
    }
}
