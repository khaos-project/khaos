pragma solidity 0.5.8;

import './Asset.sol';
import './Kmbi2EnabledFull.sol';


contract AssetWithKmbi is Asset, Kmbi2EnabledFull {
    modifier onlyRole(bytes32 _role) {
        if (address(kmbi2) != address(0) && (kmbi2.hasRole(address(this), _role, _sender()))) {
            _;
        }
    }
}
