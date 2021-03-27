pragma solidity 0.5.8;

import '../AssetWithKmbi.sol';


contract AssetWithKmbiTestable is AssetWithKmbi {
    function testRole(uint _ret) public view onlyRole('tester') returns(uint) {
        return _ret;
    }

    modifier onlyProxy() {
        _;
    }
}
