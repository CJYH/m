var a = {
	"list": [1, 2, 3],

	"func": func(a, b) {
            var r = 0;
            var i = a;
            for (; i < b; i += 1) {
                r += i;
            }
            return r;
	},

	"map": {
		"key": [3, 4, 5],
		"func": func(a, b) {
			return a + b;
		}
	}
};

print(type(a));
print(type(a["func"]));
print(a["func"](1, 10));
print(a["map"]["func"](5, 10));

a["list"] = append(a["list"], "append to list");
print(a["list"]);

del(a["list"], 3);
print(a["list"]);


var f = func(s, f) {
    var i = s;
    i += f(0, s);
    return i;
}

print(f(10, a["func"]));

print(a);

var float = 1.2e3 + 8.98 + .89 + 0x7a.8;
print("float =", float);
print(type(float));
