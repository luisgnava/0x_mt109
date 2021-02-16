// the first step for me is writing some pseudocode about the problem, so we have an array of integers, right?
// [1, 2, 3, 4, 5]
// the input is this object which contains an array, and the output desired would be N number of rotations to the left
// Let's say the number would be 2 rotations to the left, so our output would be [3, 4, 5, 2, 1]
// My first attempt at solving this problem would be as it follows:

function rotateLeft(n, d) {
    let arr = [];
    for (var i = 0; i < n.length; i++) {
        arr.push(n[i]);
    };
    for (var j = 1; j <= d; j++) {
        arr.shift(arr.push(arr[0]));
    }
    return arr;
}

// simple enough, this function will create a local var named arr to store the array as soon as it gets iterated
