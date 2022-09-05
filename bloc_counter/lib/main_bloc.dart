import 'dart:async';

class MainBloc {
  int counter = 0;
  late StreamController<int> _controller;

  MainBloc() {
    _controller = StreamController();
    _controller.add(counter);
  }

  Stream<int> get counterStream =>
      _controller.stream.map((value) => value).distinct();
  //or use
  // Stream get counterStream => _controller.stream.map;

  void incrementValue() {
    ++counter;
    _controller.sink.add(counter);
    //or use
    //_controller.add(counter);
  }

  void decrementValue() {
    --counter;
    _controller.sink.add(counter);
    //or use
    //_controller.add(counter);
  }
}
