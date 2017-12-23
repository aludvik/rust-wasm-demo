console.log("rust wasm demo");

const imports = {
  env: {
    console_log: function(num) {
      console.log(num);
    }
  }
};

fetch('wasm_demo.wasm.min')
  .then(response => response.arrayBuffer())
  .then(bytes => WebAssembly.instantiate(bytes, imports))
  .then(results => {
      console.log(results.instance.exports.times_two(41));
      results.instance.exports.print_num();
  });
