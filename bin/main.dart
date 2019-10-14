// Challenge 1
// Write a function that returns the longest sequence of consecutive zeroes in a binary string.
// Examples:
// longestZero("01100001011000") ➞ "0000"
//
// longestZero("100100100") ➞ "00"
//
// longestZero("11111") ➞ ""

import 'dart:math';

String longestZero(String sequence){
  int count = 0;
  int result = 0;
  String finalZeros = '';
  for(int i = 0; i < sequence.length;i++){
    if(sequence[i] == '1'){
      count = 0;
    }
    else {
      count ++;
      result = max(count, result);
    }
  }

  for(int i =0;i<result;i++){
    finalZeros = finalZeros + '0';
  }
  return finalZeros;
}
// Challenge 2
// Create a function that performs an even-odd transform to an array, n times. Each even-odd transformation:
//
// 1. Adds two (+2) to each odd integer.
// 2. Subtracts two (-2) to each even integer.
// Examples:
// evenOddTransform([3, 4, 9], 3) ➞ [9, -2, 15]
// Since [3, 4, 9] => [5, 2, 11] => [7, 0, 13] => [9, -2, 15]
//
// evenOddTransform([0, 0, 0], 10) ➞ [-20, -20, -20]
//
// evenOddTransform([1, 2, 3], 1) ➞ [3, 0, 5]

dynamic evenOddTransform(List<int>numbersList, int operationNumber){
  if(operationNumber>0){
    for(int i = 0;i < numbersList.length;i++){
      if(numbersList[i] % 2 == 0){
        numbersList[i] = numbersList[i] - (2*operationNumber);
      }
      else{
        numbersList[i] = numbersList[i] + (2*operationNumber);
      }
    }
    return numbersList;
  }
  else {
    return "invalid";
  }

}

main() {
print(longestZero("01100001011000"));
print(longestZero("11111"));
print(longestZero("011000010000000101"));

print(evenOddTransform([3,4,5,6,7], 3));
print(evenOddTransform([3, 4, 9], 3));
print(evenOddTransform([0, 0, 0], 10));
print(evenOddTransform([1, 2, 3], 1));
}

// Challenge 3
// Write 2 test cases to test both the previous functions in test.dart