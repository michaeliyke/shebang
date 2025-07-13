#!/usr/bin/env node
const log = console.log
const m = new Map();

m.set('a', 0);
m.set('b', 1);
m.set('c', 2);
m.set('d', 3);

m.set('a', 4);

log(m.has('a'));
log(m.has('ala'));

for (entry of m.entries()) {
  log(entry);
}

const obj = Array.from(m).reduce((obj, [key, value]) => {
  obj[key] = value;
  return obj;
}, {});

log(JSON.stringify(obj, null, 2));

log(Object.prototype.toString.call(m.keys()));
