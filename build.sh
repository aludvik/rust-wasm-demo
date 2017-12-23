#!/bin/bash
set -e
cd rust/
cargo +nightly build --target wasm32-unknown-unknown --release
cd target/wasm32-unknown-unknown/release
wasm-gc wasm_demo.wasm wasm_demo.wasm.min
cd ../../../../
mv rust/target/wasm32-unknown-unknown/release/wasm_demo.wasm.min js/
