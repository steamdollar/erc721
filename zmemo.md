nft 민팅 해보자.

nft

민팅, 판매, 구매, 스마트 컨트랙트

화면은 next로 구현

did : decentralized identifier

탈중앙화 신원증명

//

ERC-721 규격 토큰이 NFT다. nonfungible token

ERC-20은 Fungible token

erc-721
고유의 키 값이 존재한다.

mapping(address=>uint) public balances;
// erc20 같은 경우 지갑주소와 잔액을 연결하는 매핑이 있다.

0x1234 => 2000 // 동일한게 2000개가 있다.

erc-721은 좀 다름.

mapping(address => uint)
여기서의 uint는 고유 키값을 의미함.

해당하는 uri를 가지고 있는데,

이리로 가면 이 nft에 대한 json이 있다.

이미지 경로 포함..

Opensea NFT 마켓에 한 번 nft를 올려보자.

스마트 컨트랙트도 넣어보고..

일단 트러플 셋업하고

npm i -g @remix-project/remixd

cd contracts

remixd -s . --remix-ide https://remix.ethereum.org

remix.ethereum.org 들어가서

connect localhost > connect

//

라이브러리로 먼저 만들어 보면서 구조 흐름을 파악하고

직접 구현을 해보자.

npm init -y

npm i openzeppelin-solidity

(트러플 폴더에서)

node_modules에서 ERC721이 있따.

이걸 쓸거다.

//

파일 작성했으면

리믹스에서 컴파일 해줄거다.

Minting.sol 선택하고

컴파일 버튼 누르기 전에 import에서 node_modules까지 지운다. (알아서 접근함)

컴파일 클릭하고

4번쨰 탭으로 가서 환경을 가나시로 바꾸고 지갑 주소 10개가 다 잘 있는지 본다.

그리고 컨트랙트를 tx 하고 (이름, 심볼 값 정해서)

deployed contracts

주황색은 수정

파랑색은 콜 함수라고 보면 된다

//

https://rinkebyfaucet.com/ 가서 링크비ETH 좀 받고

민팅 한 번 하고

테스트넷.오픈씨 가면 보인다./

json 파일을 응답으로 주는 uri를 tokenURI 값으로 넣어야 한다.

(즉, 이 응답으로 주는 json 파일이 몇 억 하는거..

또한, json을 리턴해주는 라우터가 필요하므로 완전히 탈중앙화는 아니다..)

판매하려면

오픈씨에게 approve를 하면 된다.

https://eips.ethereum.org/EIPS/eip-721

//

ERC721 폴더를 만들고

IERC721.sol

파일을 만든다.

