#!/usr/bin/env bash

cd ../
mkdir .build_apps && cd .build_apps
git clone https://github.com/Quantum-Blockchains/api.git
cd api
git checkout kostia/v10.9.1
yarn install
yarn build

rm -r ../../apps/node_modules/@polkadot/api
rm -r ../../apps/node_modules/@polkadot/api-augment
rm -r ../../apps/node_modules/@polkadot/api-base
rm -r ../../apps/node_modules/@polkadot/api-contract
rm -r ../../apps/node_modules/@polkadot/api-derive
rm -r ../../apps/node_modules/@polkadot/rpc-augment
rm -r ../../apps/node_modules/@polkadot/rpc-core
rm -r ../../apps/node_modules/@polkadot/rpc-provider
rm -r ../../apps/node_modules/@polkadot/types
rm -r ../../apps/node_modules/@polkadot/types-augment
rm -r ../../apps/node_modules/@polkadot/types-codec
rm -r ../../apps/node_modules/@polkadot/types-create
rm -r ../../apps/node_modules/@polkadot/types-known
rm -r ../../apps/node_modules/@polkadot/types-support
rm -r ../../apps/node_modules/@polkadot/wasm-bridge
rm -r ../../apps/node_modules/@polkadot/wasm-crypto
rm -r ../../apps/node_modules/@polkadot/wasm-crypto-asmjs
rm -r ../../apps/node_modules/@polkadot/wasm-crypto-init
rm -r ../../apps/node_modules/@polkadot/wasm-crypto-wasm
rm -r ../../apps/node_modules/@polkadot/wasm-util

cp -r packages/api/build ../../apps/node_modules/@polkadot/api
cp -r packages/api-augment/build ../../apps/node_modules/@polkadot/api-augment
cp -r packages/api-base/build ../../apps/node_modules/@polkadot/api-base
cp -r packages/api-contract/build ../../apps/node_modules/@polkadot/api-contract
cp -r packages/api-derive/build ../../apps/node_modules/@polkadot/api-derive
cp -r packages/rpc-augment/build ../../apps/node_modules/@polkadot/rpc-augment
cp -r packages/rpc-core/build ../../apps/node_modules/@polkadot/rpc-core
cp -r packages/rpc-provider/build ../../apps/node_modules/@polkadot/rpc-provider
cp -r packages/types/build ../../apps/node_modules/@polkadot/types
cp -r packages/types-augment/build ../../apps/node_modules/@polkadot/types-augment
cp -r packages/types-codec/build ../../apps/node_modules/@polkadot/types-codec
cp -r packages/types-create/build ../../apps/node_modules/@polkadot/types-create
cp -r packages/types-known/build ../../apps/node_modules/@polkadot/types-known
cp -r packages/types-support/build ../../apps/node_modules/@polkadot/types-support
cp -r node_modules/@polkadot/wasm-bridge ../../apps/node_modules/@polkadot/wasm-bridge
cp -r node_modules/@polkadot/wasm-crypto ../../apps/node_modules/@polkadot/wasm-crypto
cp -r node_modules/@polkadot/wasm-crypto-asmjs ../../apps/node_modules/@polkadot/wasm-crypto-asmjs
cp -r node_modules/@polkadot/wasm-crypto-init ../../apps/node_modules/@polkadot/wasm-crypto-init
cp -r node_modules/@polkadot/wasm-crypto-wasm ../../apps/node_modules/@polkadot/wasm-crypto-wasm
cp -r node_modules/@polkadot/wasm-util ../../apps/node_modules/@polkadot/wasm-util

cd ../
rm -r -f api

git clone https://github.com/Quantum-Blockchains/ui.git
cd ui
git checkout kostia/v3.5.1
yarn install
yarn build

cp -r ../../apps/node_modules/@polkadot/ui-keyring/node_modules/mkdirp mkdirp
rm -r ../../apps/node_modules/@polkadot/react-identicon
rm -r ../../apps/node_modules/@polkadot/react-qr
rm -r ../../apps/node_modules/@polkadot/ui-keyring
rm -r ../../apps/node_modules/@polkadot/ui-settings
rm -r ../../apps/node_modules/@polkadot/ui-shared

cp -r packages/react-identicon/build ../../apps/node_modules/@polkadot/react-identicon
cp -r packages/react-qr/build ../../apps/node_modules/@polkadot/react-qr
cp -r packages/ui-keyring/build ../../apps/node_modules/@polkadot/ui-keyring
cp -r mkdirp ../../apps/node_modules/@polkadot/ui-keyring/node_modules/mkdirp
cp -r packages/ui-settings/build ../../apps/node_modules/@polkadot/ui-settings
cp -r packages/ui-shared/build ../../apps/node_modules/@polkadot/ui-shared

cd ../
rm -r -f ui

git clone https://github.com/Quantum-Blockchains/common.git
cd common
git checkout kostia/v12.3.2
yarn install
yarn build

rm -r ../../apps/node_modules/@polkadot/hw-ledger
rm -r ../../apps/node_modules/@polkadot/hw-ledger-transports
rm -r ../../apps/node_modules/@polkadot/keyring
rm -r ../../apps/node_modules/@polkadot/networks
rm -r ../../apps/node_modules/@polkadot/util
rm -r ../../apps/node_modules/@polkadot/util-crypto
rm -r ../../apps/node_modules/@polkadot/x-bigint
rm -r ../../apps/node_modules/@polkadot/x-fetch
rm -r ../../apps/node_modules/@polkadot/x-global
rm -r ../../apps/node_modules/@polkadot/x-randomvalues
rm -r ../../apps/node_modules/@polkadot/x-textdecoder
rm -r ../../apps/node_modules/@polkadot/x-textencoder
rm -r ../../apps/node_modules/@polkadot/x-ws

cp -r packages/hw-ledger/build ../../apps/node_modules/@polkadot/hw-ledger
cp -r packages/hw-ledger-transports/build ../../apps/node_modules/@polkadot/hw-ledger-transports
cp -r packages/keyring/build ../../apps/node_modules/@polkadot/keyring
cp -r packages/networks/build ../../apps/node_modules/@polkadot/networks
cp -r packages/util/build ../../apps/node_modules/@polkadot/util
cp -r packages/util-crypto/build ../../apps/node_modules/@polkadot/util-crypto
cp -r packages/x-bigint/build ../../apps/node_modules/@polkadot/x-bigint
cp -r packages/x-fetch/build ../../apps/node_modules/@polkadot/x-fetch
cp -r packages/x-global/build ../../apps/node_modules/@polkadot/x-global
cp -r packages/x-randomvalues/build ../../apps/node_modules/@polkadot/x-randomvalues
cp -r packages/x-textdecoder/build ../../apps/node_modules/@polkadot/x-textdecoder
cp -r packages/x-textencoder/build ../../apps/node_modules/@polkadot/x-textencoder
cp -r packages/x-ws/build ../../apps/node_modules/@polkadot/x-ws

cd ../../
rm -r -f .build_apps
cd apps

yarn build:apps
