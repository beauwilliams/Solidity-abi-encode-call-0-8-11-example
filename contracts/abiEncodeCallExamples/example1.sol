// SPDX-License-Identifier: MIT

pragma solidity 0.8.11;

/// @title A title that should describe the contract/interface
/// @author The name of the author
/// @notice Explain to an end user what this does
/// @dev Explain to a developer any extra details

interface MinimalERC20 {
    function transfer(address to, uint256 value) external;
}

contract example {
   function transferCalldata(address to, uint256 value)
        pure
        public
        returns (bytes memory)
    {
        return abi.encodeCall(MinimalERC20.transfer, (to, value));
    }
}
