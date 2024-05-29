// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./interfaces/IFakeUSDToken.sol";

contract FakeUSDToken is ERC20, IFakeUSDToken {
    uint256 public constant MAX_MINT_AMOUNT = 1000 * 10 ** 18; // 1000 tokens with 18 decimals

    constructor() ERC20("FakeUSDToken", "FUSD") {
        _mint(msg.sender, 10000 * 10 ** 18); // 10000 tokens with 18 decimals
    }

    function mint(address to, uint256 amount /*external onlyOwner*/) public {
        require(
            amount <= MAX_MINT_AMOUNT,
            "Cannot mint more than 1000 tokens at a time"
        );
        _mint(to, amount);
    }
}
