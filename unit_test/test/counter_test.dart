import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/counter.dart';

void main() {
  //pre test
  //setUp and setAll
  //post test

  //setup is called before every test is called
  // setUP->test->setUP-> test->setup->test
  //setupAll-> test->test->test->test

  //setup is called before all the tests
  late Counter counter;
  setUp(
    () {
      counter = Counter();
    },
  );
  group(
    'testing with group',
    () {
      test(
        'initail value of counter value is 0',
        () {
          expect(counter.getCounter, 0);
        },
      );
      test(
        'initail value of counter value is 1',
        () {
          counter.increment();
          expect(counter.getCounter, 1);
        },
      );
      test(
        'initail value of counter value is -1',
        () {
          counter.decrement();
          expect(counter.getCounter, -1);
        },
      );
    },
  );
  //treaDown(()=>null)
  //treaDownAll(()=>null)

  // test->treaDown-> test->treaDown->test
  //   test->test->test->test->treaDownAll
}
