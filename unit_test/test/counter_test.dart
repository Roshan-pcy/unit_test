import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/counter.dart';

void main() {
  group(
    'testing with group',
    () {
      final Counter counter = Counter();
      test(
        'initail value of counter value is 0',
        () {
          expect(counter.getCounter, 0);
        },
      );
      test(
        'initail value of counter value is 0',
        () {
          counter.increment();
          expect(counter.getCounter, 1);
        },
      );
    },
  );
}
