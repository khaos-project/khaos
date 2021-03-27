pragma solidity 0.5.8;

import './Kmbi2Enabled.sol';


contract Kmbi2EnabledFull is Kmbi2Enabled {
    // Setup and claim atomically.
    function setupKmbi2(Kmbi2 _kmbi2) public returns(bool) {
        if (address(kmbi2) != address(0)) {
            return false;
        }
        if (!_kmbi2.claimFor(address(this), msg.sender) &&
            !_kmbi2.isOwner(address(this), msg.sender)) {
            return false;
        }

        kmbi2 = _kmbi2;
        return true;
    }
}
