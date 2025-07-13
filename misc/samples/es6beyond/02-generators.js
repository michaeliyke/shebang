function log(...args) {
	args.forEach(function eachArg(arg) {
		if(typeof arg === "object")
			return process.stdout.write(JSON.stringify(arg));
		return process.stdout.write(String(arg));
	});
	process.stdout.write("\n");
}

function consume(itertaor) {
	for(var it of itertaor)
		log("it is: ", it);
}

function *loger() {
    var i = 3;
    do {
        yield i;
    } while(--i >= 0)
}

// for(l of loger()) {
    // log(l)
// }


function *foo() {}
// log(foo()) // {}
function *foo(x) {log("X is: ", x);}
// log(foo(29)) // {}
// log(foo(29).next()) // logs message; the return {"done": true}
function *foo() {
	var x = 10;
	var y = 20;
	log("x: ", x, ", y: ", y)
	yield;
	var z = x + y;
	// yield z;
}

// var it = foo();
// consume(it);

function *foo() {
	var x = yield 10;
	log(x);
}

// var it = foo();
// log(it.next())
// log(it.next(18))

function *foo() {
	var arr = [yield 1, yield 2, yield 3];
	log(arr, yield 4);
}

// var it = foo();
// consume(it)

// Yield delegation
function *foo() {
	yield *["michael", "C", "Iyke", "Odogwu", "Mmadu"];
	yield *"India";
}
// consume(foo());
function *foo() {
	yield 1;
	yield 2;
	yield 3;
}

function *bar() {
	yield *foo();
	yield *foo();
}

// consume(bar())

function *foo() {
	yield 1;
	yield 2;
	yield 3;
	return 4; // Can be captured by yield from another generator
}

function *bar() {
	var x = yield *foo();
	log("X is: ", x);
}

// consume(bar())

function *foo(x) {
	if(x < 3){
		x = yield *foo(x+1);
	}
	return x*2;
}

// log(foo(1).next())

// Early Return
function *foo() {
	try {
		yield 1;
		yield 2;
		yield 3;
	} finally {
		// No yield in finally block to enable premature return process immediately
		log("Cleaning up");
	}
}

// consume(foo())
var it = foo();
log(it.next());
log(it.return(105)); // Signals for cleanup after premature return