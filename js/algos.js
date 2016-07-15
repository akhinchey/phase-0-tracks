var test = ["long phrase","longest phrase","longer phrase"];

function longestStr(arr) {
  var longest = arr[0];
    for (var i = 0; i< arr.length; i++) {
      if (arr[i].length > longest.length) {
        longest = arr[i];
      }
    }
    return longest;
}

longestStr(test);