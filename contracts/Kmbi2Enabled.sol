pragma solidity 0.5.8;


contract Kmbi2 {
    function claimFor(address _address, address _owner) public returns(bool);
    function hasRole(address _from, bytes32 _role, address _to) public view returns(bool);
    function isOwner(address _node, address _owner) public view returns(bool);
}


contract Kmbi2Enabled {
    Kmbi2 public kmbi2;

    modifier onlyRole(bytes32 _role) {
        if (address(kmbi2) != address(0) && kmbi2.hasRole(address(this), _role, msg.sender)) {
            _;
        }
    }

    // Perform only after claiming the node, or claim in the same tx.
    function setupKmbi2(Kmbi2 _kmbi2) public returns(bool) {
        if (address(kmbi2) != address(0)) {
            return false;
        }

        kmbi2 = _kmbi2;
        return true;
    }
}
