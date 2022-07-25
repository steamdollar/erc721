// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "./IERC721.sol";
import "./ERC721Metadata.sol";

contract ERC721 is IERC721, IERC721Metadata {
    function name() external view override returns (string memory);

    function symbol() external view override returns (string memory);

    function tokenURI(uint256 _tokenId)
        external
        view
        override
        returns (string memory);

    // owner가 가진 총 nft 갯수
    function balanceOf(address _owner) external view override returns (uint256);

    // _tokenId => 소유하고 있는 address
    function ownerOf(uint256 _tokenId) external view override returns (address);

    // transfer (소유권 이전) - 관련 함수가 대강 4가지 있는데 transfer from 정도만 넣어보자
    function transferFrom(
        address _from,
        address _to,
        uint256 _tokenId
    ) external override;

    // approve 대리인 : token 하나에 대해
    function approve(address _to, uint256 _tokenId) external override;

    // approve 대리인의 주소를 리턴해주는 함수
    function getApproved(uint256 _tokenId)
        external
        view
        override
        returns (address);

    // setApprovalForAll owner 가진 모든 토큰을 대리인 지정
    function setApprovalForAll(address _operator, bool _approved)
        external
        override;

    // _approved를 return하는 함수 - 대리인 지정/취소
    function isApprovalForAll(address _owner, address _operator)
        external
        view
        override
        returns (bool);
}
