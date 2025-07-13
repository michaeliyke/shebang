function log(...args) {
    args.forEach(function eachArg(arg) {
        if(typeof arg === "object")
            return process.stdout.write(JSON.stringify(arg));
        return process.stdout.write(String(arg));
    });
    process.stdout.write("\n");
}


function *loger() {
    var i = 3;
    do {
        yield i;
    } while(--i >= 0)
}

for(l of loger()) {
    log(l)
}


