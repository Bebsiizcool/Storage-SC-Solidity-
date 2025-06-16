## 🧠 Contract Overview

### 1. `simplestorage.sol`
A simple contract that:
- Stores a single `uint256` value.
- Uses a `struct` to store a person's name and their favorite number.
- Stores people in an array and uses a mapping to link names to numbers.

#### Key Functions:
- `store(uint256)`: Save a number.
- `retrieve()`: View the stored number.
- `addperson(string, uint256)`: Add a new person to the list and mapping.

---

### 2. `storagefac.sol`
A factory contract that:
- Deploys new instances of the `SimpleStorage` contract.
- Allows storing and retrieving values from each deployed instance.

#### Key Functions:
- `createstoragecontract()`: Deploys a new `SimpleStorage` contract.
- `sfstore(index, value)`: Stores a value in a specified contract instance.
- `sfget(index)`: Retrieves the value from a specified contract instance.

---

### 3. `addfivestorage.sol`
A child contract that inherits from `SimpleStorage` and overrides the `store` function to add 5 to any input before storing it.

#### Key Function:
- `store(uint256)`: Stores the number + 5 instead of the exact input.

---
