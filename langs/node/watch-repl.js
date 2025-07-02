// watch-repl.js
const fs = require('fs');
const chokidar = require('chokidar');
const repl = require('repl');

let context = {};

function loadFile() {
  delete require.cache[require.resolve('./your-script.js')];
  context = require('./your-script.js');
  console.log('Reloaded your-script.js');
}

chokidar.watch('./your-script.js').on('change', () => {
  loadFile();
});

loadFile();

const r = repl.start('> ');
r.context.ctx = context;

// node watch-repl.js
