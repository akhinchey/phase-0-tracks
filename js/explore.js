// JS reverse
// create function that takes string
// for each character in the string, add the character into a new string
// starting with the last character in the original string 
// end when all of the characters have been pushed
// print out new reversed string
 
function strReverse(str) {
var newStr ="";
  for(var i = str.length-1; i>=0; i--) {
    newStr+=str[i];
  }
  return newStr;
}

var reversedHello = strReverse("hello");

console.log(reversedHello);




// Alternate shorter function


function reverseStr(str) {
  return str.split("").reverse().join("");
}

var helloReversed = reverseStr("hello");

console.log(helloReversed);