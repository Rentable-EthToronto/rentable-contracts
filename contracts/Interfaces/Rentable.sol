// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6.0 <0.9.0;

interface IPawnSpace {
    function getLentables() external view returns (uint256[] memory);

    function getLentableInfo(uint256 id)
        external
        view
        returns (
            uint256 id,
            address owner,
            address lender,
            address requestToken,
            uint256 duration,
            uint256 createdBlockTimestamp,
            uint256 acceptedBlockTimestamp,
        );

    function mintLentable(address contractAddress, uint256 tokenId, uint256 price,uint256 maxDuration ) external returns (uint256 memory id);

    function burnLentable(uint256 id) external;

    function accept(uint256 id, uint256 offerId) external;

    function return(uint256 id) external;

    function withdraw(uint256 id) external;

    function exists(uint256 id) external view returns (bool);
}
