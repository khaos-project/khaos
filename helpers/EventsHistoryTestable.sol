pragma solidity 0.5.8;

import '../EventsHistory.sol';
import '../../deps/contracts/Kmbi2EnabledFake.sol';


// For testing purposes.
// solhint-disable-next-line no-empty-blocks
contract EventsHistoryTestable is EventsHistory, Kmbi2EnabledFake {}
