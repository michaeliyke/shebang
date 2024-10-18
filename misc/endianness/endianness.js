#!/usr/bin/env node
const os = require('os');

// Returns the endianness of the CPU for which the Node.js binary was compiled.
console.log(os.endianness());
