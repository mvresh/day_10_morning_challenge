import 'package:test/test.dart';
import 'main.dart';

void main(){
  test("Final zeros and even odd", () {
    expect(longestZero("011000010101"), equals('0000'));
    expect(longestZero("11111"), equals(''));
    expect(evenOddTransform([3,4,5,6,7],3), equals([9, -2, 11, 0, 13]));
  });
}