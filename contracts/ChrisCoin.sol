pragma solidity ^0.8.8;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ChrisCoin is ERC20 {
    uint256 constant _initial_supply = 10000000000 * (10**18);

    constructor() ERC20("ChrisCoin", "CC") {
        _mint(msg.sender, _initial_supply);
    }

    mapping(address => uint256) public lockTime;

    function requestTokens() external {
        require(
            block.timestamp > lockTime[msg.sender],
            "lock time has not expired. Please try again later"
        );

        //mint tokens
        _mint(msg.sender, 50 * (10**18));

        //updates locktime 1 day from now
        lockTime[msg.sender] = block.timestamp + 1 days;
    }
}
