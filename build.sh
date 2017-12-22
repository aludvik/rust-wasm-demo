#!/bin/bash
cd rust/
cargo +nightly build --target wasm32-unknown-unknown --release
cd target/wasm32-unknown-unknown/
wasm-gc wasm_demo.wasm wasm_demo.wasm.min
cd ../../../
cp rust/target/wasm32-unknown-unknown/wasm_demo.wasm.min js/
