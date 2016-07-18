

function longestStr(arr) {
  var longest = arr[0];
    for (var i = 0; i< arr.length; i++) {
      if (arr[i].length > longest.length) {
        longest = arr[i];
      }
    }
    return longest;
}


function compareObjects(obj1, obj2) {
  for (var key in obj1) {
    for (var nextKey in obj2) {
      if (key === nextKey) {
        if (obj1[key] === obj2[nextKey]) {
          return true;
        } 
      }
    }
  }
  return false;
}


function randomWords(num) {
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var newWord ="";
  
  for (var i =0; i < num; i++) {
    newWord += (alphabet[Math.round(Math.random() * 25)]);
  }
  
  return newWord;
}


function randomWords(num) {
  var wordArr =[];  
  for(var j=0; j<num; j++) {  
    
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    var newWord ="";
    
    for (var i =0; i < Math.ceil(Math.random()*10); i++) {
      newWord += (alphabet[Math.round(Math.random() * 25)]);
    }
    
    wordArr.push(newWord);
  }
  return wordArr;
}



// Driver code for longestStr
var test = ["long phrase","longest phrase","longer phrase"];
console.log(longestStr(test));


// Driver code for compareObjects
var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", age: 54};
console.log(compareObjects(obj1, obj2));


// Driver code for randomWords
for (var i =0; i<10; i++) {
  var randomArr = randomWords(Math.ceil(Math.random()*10));
  console.log(randomArr);
  console.log(longestStr(randomArr));
}