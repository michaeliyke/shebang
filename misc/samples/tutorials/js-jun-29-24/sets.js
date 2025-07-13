#!/usr/bin/env node
const log = console.log;
const s = new Set();
s.add(1);
s.add(2);
s.add(3);
s.add(4);
s.add(5);
log(s);
log(s.size);
s.delete(3);
log(s.size);
log(s);

for (let item of s) {
  log(item);
}

const data = Array.from(s).reduce((array, item) => {
  array.push(item);
  return array;
}, []);

log(data);

log(JSON.stringify(data));
