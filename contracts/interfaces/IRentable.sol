// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface IRentable  {
    struct RentalUnit {
        address tokenAddr;
        uint256 unitId;
        uint256 tokenId;
        uint256 deposit;
        uint256 fee;
        uint256 duration;
        uint256 expiry;
        address renter;
        bool rented;
        bool complete;
    }
    event CreateRentalUnit(
        address indexed sender,
        address tokenAddress,
        uint256 tokenId,
        uint256 deposit,
        uint256 fee,
        uint256 duration,
        uint256 unitId
    );
    event UnitCancel(address indexed sender, uint256 rentalId);
    event RentNFT(address indexed sender, uint256 rentalId);
    event ReturnNFT(address indexed sender, uint256 rentalId);
    event LiquidateNFT(address indexed sender, address holder, uint256 rentalId);
    function createRentalUnit(
        address _tokenAddr, 
        uint256 _tokenId, 
        uint256 _deposit, 
        uint256 _fee, 
        uint256 _duration
    ) external;
    function rentNFT(uint256 _unitId) external;
    function cancelUnit(uint256 _unitId) external;
    function returnNFT(uint256 _unitId) external;
    function liquidateNFT(uint256 _unitId) external;
    function getRentalUnit(uint256 unitId) view external returns(RentalUnit memory _unit);
    function getRentalUnitList(uint256 _from, uint256 _to) view external returns(RentalUnit[] memory);
}