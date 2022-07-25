// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "openzeppelin-solidity/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract Minting is ERC721 {
    constructor(string memory _name, string memory _symbol)
        ERC721(_name, _symbol)
    {}

    function _minting(uint256 _tokenId) public {
        _mint(msg.sender, _tokenId);
    }

    function tokenURI(uint256 _tokenId)
        public
        pure
        override
        returns (string memory)
    {
        return "https://gateway.pinata.cloud/ipfs/QmPwjnvWYN4etA5eW4yAbWCTy2ukEC1Jj5417VLGyH5XpU/1/1.json";
    }
}
