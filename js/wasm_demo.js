console.log("rust wasm demo");
fetch('wasm_demo.wasm.min')
.then(response => response.arrayBuffer())
.then(bytes => WebAssembly.instantiate(bytes, {}))
.then(results => {
    console.log(results.instance.exports.add_one(41));
});
