pragma solidity ^0.8.8;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ChrisCoin is ERC20 {
    uint256 constant _initial_supply = 10000000 * (10**18);

    constructor() ERC20("ChrisCoin", "CC") {
        _mint(msg.sender, _initial_supply);
    }
}
