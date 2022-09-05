import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  int? counter;

  CounterState({this.counter});

  CounterState copyWith({int? counter}) {
    return CounterState(counter: counter ?? this.counter);
  }

  @override
  List<Object?> get props => [counter];
}
