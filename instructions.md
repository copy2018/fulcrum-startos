# Fulcrum
A fast & nimble SPV server for Bitcoin Cash, Bitcoin BTC, and Litecoin.

## Configuration
Select your Bitcoin node as a backend.  Currently, Bitcoin Core is supported, with options for main or testnet.

## Usage
After configuring, simply "Start" the service.  This will begin syncing your indexer.  This may take quite some time, up to 1-2 days, depending on your hardware.

> **_NOTE:_**  If you experience database corruption (this can happen after a loss of power or on under-powered hardware), simply stop the service (it will likely get stuck in a restarting loop), uninstall, and install fresh.  You will need to sync the db over again.
