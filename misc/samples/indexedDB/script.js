const indexDB = window.indexedDB ||
  window.mozIndexedDB ||
  window.webkitIndexedDB ||
  window.msIndexedDB ||
  window.shimIndexedDB;

// Open (or create) the CarsDatabase
// 1 is the version of the database schema.
const request = indexDB.open('CarsDatabase', 1);

request.onerror = function showError(event) {
  console.log('error: ', event);
}

// Runs when the database is first created or the version  number is updated.
// This is where you specify the schema of the database.
request.onupgradeneeded = function upgrade(event) {
  const db = event.target.result;

  // cars table
  const objectStore = db.createObjectStore('cars', { keyPath: 'id' });
  // cars table columns as named indexes
  objectStore.createIndex('cars_colour', ['colour'], { unique: false });
  objectStore.createIndex('colour_and_make', ['colour', 'make'], { unique: false });
};

// Runs when the database is successfully opened.
request.onsuccess = function success(event) {
  const db = event.target.result;
  const transaction = db.transaction('cars', 'readwrite');

  const store = transaction.objectStore('cars');
  const colourIndex = store.index('cars_colour');
  const colourAndMakeIndex = store.index('colour_and_make');

  // Add some data
  store.put({ id: 1, make: 'Toyota', colour: 'red' });
  // red kia
  store.put({ id: 2, make: 'Kia', colour: 'red' });
  // Blue Honda
  store.put({ id: 3, make: 'Honda', colour: 'blue' });
  // Silver Subaru
  store.put({ id: 4, make: 'Subaru', colour: 'silver' });

  // Query the data
  const idQuery = store.get(4);
  const colorQuery = colourIndex.getAll(['red']);
  const colorAndMakeQuery = colourAndMakeIndex.get(['Blue', 'Honda']);

  idQuery.onsuccess = function idQuerySuccess() {
    console.log('idQuery', idQuery.result);
  };

  colorQuery.onsuccess = function colorQuerySuccess() {
    console.log('colorQuery', colorQuery.result);
  };

  colorAndMakeQuery.onsuccess = function colorAndMakeQuerySuccess() {
    console.log('colorAndMakeQuery', colorAndMakeQuery.result);
  };

  // close
  transaction.oncomplete = function transactionComplete() {
    db.close();
  };
};
