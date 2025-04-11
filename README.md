![gitthumps](https://github.com/user-attachments/assets/1d5ba61b-8568-440c-bc06-39d47954c797)

This FiveM script was developed to regularly deduct insurance fees from players for their vehicles. Due to the various configuration options in the `Config.lua` file, the insurance obligation can be customized in detail. This contributes to a more realistic gaming experience and provides an additional challenge when dealing with vehicles.

**New in this version:**

1. **QBCore support:** The system is now fully compatible with the QBCore framework for wider usability.
2. **Own notification system:** The dependency on `ox_lib` has been removed. Instead, the script now uses our own notification system. Alternatively, the standard notifications from ESX and QBCore can still be used.
3. **Optimized code:** The code has been fundamentally optimized to improve the performance and efficiency of the script.

## Our notification system

> [sc_notify](https://github.com/ScubeScripts/sc_notify)

## Requirements

> [ESX-Legacy](https://github.com/esx-framework/esx-legacy)

or

> [QBCore](https://github.com/qbcore-framework/qb-core)

## Installation
Clone or download this repository

Add `sc_cartax` to your `resources` folder

Add this to your `server.cfg`:
```
ensure sc_cartax 
```
