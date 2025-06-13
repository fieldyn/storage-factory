// SPDX-License-Identifier: MIT

pragma solidity 0.8.24; // stating our solidity version
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage public simpleStorage;

    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }
}