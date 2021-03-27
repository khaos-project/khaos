pragma solidity 0.5.8;

import '../RegistryICAP.sol';
import '../../deps/contracts/Kmbi2EnabledFake.sol';


// For testing purposes.
// solhint-disable-next-line no-empty-blocks
contract RegistryICAPTestable is RegistryICAP, Kmbi2EnabledFake {}
