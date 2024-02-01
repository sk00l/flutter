import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/blocc/counter_event.dart';
import 'package:flutter_application_1/blocc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
  }

  void _increment(IncrementCounter event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _decrement(DecrementCounter event, Emitter<CounterState> emit) {
    if (state.counter > 0) {
      emit(state.copyWith(counter: state.counter - 1));
    }
  }
}
