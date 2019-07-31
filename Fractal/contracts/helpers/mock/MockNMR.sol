pragma solidity ^0.5.0;

import "../openzeppelin-solidity/token/ERC20/ERC20Burnable.sol";
import "./MockERC20Mintable.sol";


contract MockNMR is ERC20Burnable, MockERC20Mintable {
    uint8 public constant DECIMALS = 18;
    uint256 public constant INITIAL_SUPPLY = 10000 * (10 ** uint256(DECIMALS));

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}