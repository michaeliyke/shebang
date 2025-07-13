function log(...args) {
    args.forEach(function eachArg(arg) {
        if(typeof arg === "object")
            return process.stdout.write(JSON.stringify(arg));
        return process.stdout.write(String(arg));
    });
    process.stdout.write("\n");
}

function foo(strings, ...values) {
    log(strings);
    log(values);
}

var desc = "awesome";
// foo`Everything is ${desc}!`;

