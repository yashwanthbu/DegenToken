// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, ERC20Burnable, Ownable {
    string public itms="Our in-game items are: 1.Degen Bag 2.Degen Hoodie 3.Degen Eraser 4.Degen Shirt 5.Degen Stickies ";
    constructor() ERC20("Degen", "DGN") {}

        function mint(address to, uint256 amount) public onlyOwner {
            _mint(to, amount);
    }
        function redeem(uint256 _redeemamt) public {
            assert(balanceOf(msg.sender)>10000);
            if(_redeemamt>5 && _redeemamt<=0){
                revert("Please enter a choice within 1 to 5 as there are only 5 items in our in-game store");
            }
            
            _burn(msg.sender, _redeemamt*10000);
        }
}
