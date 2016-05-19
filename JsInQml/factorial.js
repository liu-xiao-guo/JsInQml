.pragma library

var factorialCount = 0;

function factorial(a) {
    // a = parseInt(a);

    // factorial recursion
    if (a > 0)
        return a * factorial(a - 1);

    // shared state
    factorialCount += 1;

    // recursion base-case.
    return 1;
}

function factorialCallCount() {
    return factorialCount;
}

function changeBackgroundColor() {
    main.backgroundColor = "green"
}

function changeBackground(obj) {
    obj.backgroundColor = "green"
}


