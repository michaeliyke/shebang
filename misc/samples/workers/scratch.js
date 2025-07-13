function log(...args) {
	args.forEach(function eachArg(arg) {
		if(typeof arg === "object")
			return process.stdout.write(JSON.stringify(arg));
		return process.stdout.write(String(arg));
	});
	process.stdout.write("\n");
}

var thenable = {
	then: function then(resolve) {
		return {
			then: function then(resolve) {
		resolve(42)
	}
		};
}};

function foo(thenable) {
	return new Promise((resolve, reject) => {
		resolve(Promise.resolve(thenable));
	});
}

// foo(thenable).then(log);

Promise.resolve(21).then((v) => new Promise((res)=>res(v*2))).then(log);
Promise.resolve(21).then((v) => new Promise((res)=>{
	setTimeout(() =>{
		res(v*2);
	}, 3000);
})).then(log);



FACTS
1. The law and the promise are:
(a) facts (b) conditions (c) principles
(d) factors (e) tools for justification

2. The flesh and the Spirit are:
(a) conditions (b) factors (c) principles
(d) facts (e) natures

3. Under grace vs under the law, what this means:
(a)

4. Grace and law are:
(a) unmbrellas


Flesh & spirit are- 
Natures?- Human nature and God's nature.\
Controllers?- Both are controllers of human mind.\
Ways?- Both bring different ways or views while in control\
Modes?- two modes of life - flesh lifestyle & the Spirit's lifestyle











NOT UNDER THE LAW
-----------------
We are not justified under the practice of Jewish laws but by the inheritance
of the promise of God to Abraham and his Seed Christ. Christ is grace or gives 
us grace. Christ is the promised Seed. All believers in Christ are born into the
Kingdom according to the promise and so, these are blessed - are justified and given
and given grace to live in righteousness by faith. So, not under the law but grace
means not powerless and condemned but under freshness of fresh start and energetic 
spirit of divine grace.