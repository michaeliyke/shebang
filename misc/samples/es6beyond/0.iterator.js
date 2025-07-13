function log(...args) {
	args.forEach(function eachArg(arg) {
		if(typeof arg === "object")
			return process.stdout.write(JSON.stringify(arg));
		return process.stdout.write(String(arg));
	});
	process.stdout.write("\n");
}

var arr = [1,2,3];
var it = arr[Symbol.iterator]();

log(it.next())