function reverseStr(str) {
  return str.split("").reverse().join("");
}

var hello = "Hello";

var helloReversed = reverseStr(hello);

console.log(helloReversed);