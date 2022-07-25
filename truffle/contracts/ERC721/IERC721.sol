// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

interface IERC721 {
    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 indexed _tokenId
    );
    event Approval(
        address indexed _from,
        address indexed _approved,
        uint256 indexed _tokenId
    );
    // 특정 토큰만을 위임
    event ApprovalForAll(
        address indexed _owner,
        address indexed _operator,
        bool _approve
    );

    // 대리인에게 맡길지 말지를 설정

    // owner가 가진 총 nft 갯수
    function balanceOf(address _owner) external view returns (uint256);

    // _tokenId => 소유하고 있는 address
    function ownerOf(uint256 _tokenId) external view returns (address);

    // transfer (소유권 이전) - 관련 함수가 대강 4가지 있는데 transfer from 정도만 넣어보자
    function transferFrom(
        address _from,
        address _to,
        uint256 _tokenId
    ) external;

    // approve 대리인 : token 하나에 대해
    function approve(address _to, uint256 _tokenId) external;

    // approve 대리인의 주소를 리턴해주는 함수
    function getApproved(uint256 _tokenId) external view returns (address);

    // setApprovalForAll owner 가진 모든 토큰을 대리인 지정
    function setApprovalForAll(address _operator, bool _approved) external;

    // _approved를 return하는 함수 - 대리인 지정/취소
    function isApprovalForAll(address _owner, address _operator)
        external
        view
        returns (bool);
}
