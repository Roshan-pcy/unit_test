class Counter {
  int _counter = 0;
  int get getCounter => _counter;
  void increment() {
    _counter++;
  }

  void decrement() {
    _counter--;
  }

  void reSet() {
    _counter = 0;
  }
}
