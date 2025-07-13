/**
 * A proxy is a special kind of object you create that “wraps”—or sits in
 * front of—another normal object. You can register special handlers
 * (aka traps) on the proxy object, which are called when various oper‐
 * ations are performed against the proxy. These handlers have the
 * opportunity to perform extra logic in addition to forwarding the
 * operations on to the original target/wrapped object
 **/
function log(...args) {
	args.forEach(function eachArg(arg) {
		if(typeof arg === "object")
			return process.stdout.write(JSON.stringify(arg));
		return process.stdout.write(String(arg));
	});
	process.stdout.write("\n");
}

var obj = {a: 1};
var handlers = {
	get(target, key, context) {
		// target=obj; context=pObj
		log("Accessing key: ", key);
		return Reflect.get(target, key, context);
	}
};
var pObj = new Proxy(obj, handlers);
// log(pObj.a)
