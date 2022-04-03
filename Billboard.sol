// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Billboard{
    struct advertiser{
        address adAddress;
        string img;
        uint256 rate;
    }
    struct billboard1{
        string img;
        uint256 rate;
    }
    struct billboard2{
        string img;
        uint256 rate;
    }
    mapping(address=> billboard1) ownerToBillboard;
    mapping(address=> billboard2) ownerToBillboard2;
    mapping(address => uint256) ownerToRate;
    function getRate (address owner) public view returns(uint256){
        return ownerToRate[owner];
    }
    function  setRate(uint rate) public returns(bool){
        ownerToRate[msg.sender] = rate;
        return true;
    }
    function setBillboard1(address owner, string memory urlImg) public returns(bool){
        ownerToBillboard[owner].img= urlImg;
        return true;
    }
    function getBillboard1(address owner) public view returns(string memory){
        return ownerToBillboard[owner].img;
    }
    function setBillboard2(address owner, string memory urlImg) public returns(bool){
        ownerToBillboard2[owner].img= urlImg;
        return true;
    }
    function getBillboard2(address owner) public view returns(string memory){
        return ownerToBillboard2[owner].img;
    }

}
