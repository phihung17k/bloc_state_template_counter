import 'dart:async';
import 'package:rxdart/rxdart.dart';

class MainBloc<T extends dynamic> {
  late BehaviorSubject<T> _controller;

  MainBloc({T? state}) {
    _controller = BehaviorSubject.seeded(state as T);
  }

  T get state => _controller.value;

  Sink<T> get stateSink => _controller.sink;
  Stream<T> get stateStream => _controller.stream;
}
