import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/blocc/counter_event.dart';
import 'package:flutter_application_1/blocc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
  }

  int total = 0;

  void _increment(IncrementCounter event, Emitter<CounterState> emit) {
    final newCounterValue = state.counter + 1;
    total += state.counter + 1;
    log(total.toString());
    emit(state.copyWith(counter: newCounterValue, total: total));
  }

  void _decrement(DecrementCounter event, Emitter<CounterState> emit) {
    if (state.counter > 0) {
      final newCounterValue = state.counter - 1;
      emit(state.copyWith(counter: newCounterValue, total: state.total));
    }
  }
}
