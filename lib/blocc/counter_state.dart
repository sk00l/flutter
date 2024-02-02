import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int counter;
  final int total;

  const CounterState({this.counter = 0, this.total = 0});

  CounterState copyWith({int? counter, int? total}) {
    return CounterState(
      counter: counter ?? this.counter,
      total: total ?? this.total,
    );
  }

  @override
  List<Object> get props => [counter, total];
}
