// SPDX-License-Identifier: MIT

pragma solidity 0.8.11;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract ZooBaNFT is ERC721 {
    uint256 public totalSupply;
    constructor() ERC721("ZooBaNFT", "ZOOBA") {
    }
    function mint() public {
        _mint(msg.sender, totalSupply);
        totalSupply += 1;
    }
    function tokenURI(uint256 tokenId) public pure override returns (string memory) {
        return string( abi.encodePacked("https://raw.githubusercontent.com/srdemigod/ZooBaNFT3/master/assets/ZooBaNFT_", Strings.toString(tokenId) , ".json"));

    }
}