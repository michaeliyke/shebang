function log(...args) {
	args.forEach(function eachArg(arg) {
		if(typeof arg === "object")
			return process.stdout.write(JSON.stringify(arg));
		return process.stdout.write(String(arg));
	});
	process.stdout.write("\n");
}

var sym = Symbol("Quite nice");

// log(sym)
// log(typeof sym)
// log(sym.valueOf() === sym)
// log(Object(sym).valueOf())
// log(Object(sym).valueOf() === sym)
// log(Object(sym) instanceof Symbol)
// log(Object("str") instanceof String)
// log(Object.getOwnPropertySymbols(Symbol))

// WELL KNOWN SYMBOLS

// Symbol.iterator: for of loop
var arr = [4,5,6,7,8,9];
arr[Symbol.iterator] = function *iterator() {
	var index = 1;

	do {
		yield this[index];
	} while((index += 2) < this.length);
};

// for (const val of arr) {
	// log(val)
// }

// Symbol.toStringTag and Symbol.hasInstance: toString and instanceof
function Foo(greeting) {
	this.greeting = greeting;
}
Foo.prototype[Symbol.toStringTag] = "Foo";
Object.defineProperty(Foo, Symbol.hasInstance, {
	value: function hasInstance(instance) {
		return instance.greeting.toLowerCase() === "hello";
},
});

var a = new Foo("Hello");
var b = new Foo("world");
b[Symbol.toStringTag] = "Cool";

// log(a.toString()) // [object Foo]
// log(String(b)) // [object Cool]
// log(a instanceof Foo) // true
// log(b instanceof Foo) // false

// Symbol.species: tells which constructor will be used by builtin methods
// of a class to spawn a new instance
class Cool{
	static get [Symbol.species]() {
		return this;
	}

	again() {
		return new this.constructor[Symbol.species]();
	}
}

class Fun extends Cool {}

class Awesome extends Cool {
	// Force species to be parent constructor
	static get [Symbol.species]() {
		return Cool;
	}
}

var a = new Fun;
var b = new Awesome;
var c = a.again();
var d = b.again();

// log(c instanceof Fun) // true
// log(d instanceof Awesome) // false
// log(d instanceof Cool) // true

// Symbol.toPrimitive: when an object must be coerced to a primitive value eg ==, +
var arr = [1, 2, 6]
// log(arr + 5) // [1,2,65]
var names = ["Name"," is "]
// log(names+" Michael C") // Name, is Michael C

arr[Symbol.toPrimitive] =  toPrimitive;
names[Symbol.toPrimitive] =  toPrimitive1;

function toPrimitive(hint) {
	// hint shows what operation is about needed +,/,*,% etc means number
	// String() etc means string operation. Hints helps you to respond approperiately
	if(hint === "default" || hint === "number") {
		return this.reduce((result, curr) => result+curr, 0);
	}
};
function toPrimitive1(hint) {
	// hint shows what operation is about needed +,/,*,% etc means number
	// String() etc means string operation. Hints helps you to respond approperiately
	if(hint === "default" || hint === "number") {
		return this.reduce((result, curr) => result+curr, "");
	}
};

// log(arr+10)
log(names+3)

// Symbol.isConcatSpreadable: indicate if should be spread out if passed to concat
var a = [1,2,3];
var b = [4,5,6];
b[Symbol.isConcatSpreadable] = false;
log([1,2,3].concat(b)) // [1,2,3,[4,5,6]]
log([-2,-1,0].concat(a)) // [-2,-1,0,1,2,3]
