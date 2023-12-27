import 'package:flutter_test/flutter_test.dart';
import 'package:test_practice/counter.dart';

void main(){
  group('Testing the Counter', () {
    test('Decrement Test', () {
      // Prepare the object
      Counter counter=Counter(value: 5);

      // Write the body of the test
      counter.decrementCounter();

      // expectation
      expect(counter.value, 4);
    });

    test('Increment Test', () {
      // Prepare the object
      Counter counter=Counter(value: 9);

      // Write the body of the test
      counter.incrementCounter();

      // Define expectations
      expect(counter.value, 10);
    });
  });
}