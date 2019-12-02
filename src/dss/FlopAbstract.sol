pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";
import { TokenAbstract } from "../dapp/TokenAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/flop.sol
contract FlopAbstract {
    // mapping (address => uint256) public wards;
    function wards(address) public returns (uint256);
    function rely(address) external;
    function deny(address) external;
    struct Bid {
        uint256 bid;
        uint256 lot;
        address guy;  // high bidder
        uint48  tic;  // expiry time
        uint48  end;
    }
    // mapping (uint => Bid) public bids;
    function bids(uint256) public returns (uint256, uint256, address, uint48, uint48);
    //VatAbstract public vat;
    function vat() public returns (VatAbstract);
    // TokenAbstract public gem;
    function gem() public returns (TokenAbstract);
    // uint256 public ONE;
    function ONE() public returns (uint256);
    // uint256 public beg;  // 5% minimum bid increase
    function beg() public returns (uint256);
    // uint256 public pad;  // 50% lot increase for tick
    function pad() public returns (uint256);
    // uint48 public ttl;  // 3 hours bid lifetime
    function ttl() public returns (uint48);
    // uint48 public tau;   // 2 days total auction length
    function tau() public returns (uint48);
    // uint256 public kicks;
    function kicks() public returns (uint256);
    // uint256 public live;
    function live() public returns (uint256);
    // address public vow;
    function vow() public returns (address);
    event Kick(uint256, uint256, uint256, address);
    function file(bytes32, uint256) external;
    function kick(address, uint256, uint256) external returns (uint256);
    function tick(uint256) external;
    function dent(uint256, uint256, uint256) external;
    function deal(uint256) external;
    function cage() external;
    function yank(uint256) external;
}