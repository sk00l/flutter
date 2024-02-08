part of 'details_bloc.dart';

abstract class DetailsEvent extends Equatable {
  const DetailsEvent();

  @override
  List<Object?> get props => [];
}

class DetailsSaveRequested extends DetailsEvent {
  final String name;
  final String username;
  final String bio;

  const DetailsSaveRequested(this.name, this.username, this.bio);

  @override
  List<Object?> get props => [name, username, bio];
}

class DetailsLoadRequested extends DetailsEvent {}
