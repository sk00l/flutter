import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object?> get props => [];
}

class IncrementCounter extends CounterEvent {}

class DecrementCounter extends CounterEvent {}

class UpdateTotalCount extends CounterEvent {
  final int newCount;

  const UpdateTotalCount(this.newCount);

  @override
  List<Object?> get props => [newCount];
}
