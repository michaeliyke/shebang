function log(...args) {
	function noCircles(obj) {
		for(var p in obj)
			if(obj[p] && obj[p][p] && obj[p][p][p]) obj[p] = "[object Circles]";
		return obj;
	}

	args.forEach(function eachArg(arg) {
		if(typeof arg === "object")
			return process.stdout.write(JSON.stringify(noCircles(arg)));
		return process.stdout.write(String(arg));
	});
	process.stdout.write("\n");
}

// var worker = new Worker("worker0.js");
// worker.onmessage = function onmessage(event) {
// 	log("Message from worker process!");
// };
log(isNaN("y"))
