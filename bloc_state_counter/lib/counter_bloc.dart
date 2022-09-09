import 'package:bloc_state_counter/counter_state.dart';
import 'package:bloc_state_counter/main_bloc.dart';

class CounterBloc extends MainBloc<CounterState> {
  CounterBloc() : super(state: const CounterState(counter: 0));

  Stream<int> get counterStream =>
      stateStream.map((state) => state.counter as int).distinct();

  void incrementValue() {
    stateSink.add(state.copyWith(counter: state.counter!.toInt() + 1));
  }

  void decrementValue() {
    stateSink.add(state.copyWith(counter: state.counter!.toInt() - 1));
  }
}
