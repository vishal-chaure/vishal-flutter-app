import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(value: 0)) {
    on<CounterIncremented>(_onIncrement);
    on<CounterDecremented>(_onDecrement);
  }

  void _onIncrement(
    CounterIncremented event,
    Emitter<CounterState> emit,
  ) {
    emit(
      CounterState(value: state.value + 1),
    );
  }

  void _onDecrement(
    CounterDecremented event,
    Emitter<CounterState> emit,
  ) {
    emit(
      CounterState(value: state.value - 1),
    );
  }
}
