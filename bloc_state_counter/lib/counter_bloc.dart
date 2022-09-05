import 'package:bloc_state_counter/counter_state.dart';
import 'package:bloc_state_counter/main_bloc.dart';

class CounterBloc extends MainBloc<CounterState> {
  CounterBloc() : super(state: CounterState(counter: 0));

  Stream<int> get counterStream =>
      stateStream.map((state) => state.counter as int).distinct();

  void incrementValue() {
    state.counter = state.counter!.toInt() + 1;
    stateSink.add(state);
  }

  void decrementValue() {
    state.counter = state.counter!.toInt() - 1;
    stateSink.add(state);
  }
}
