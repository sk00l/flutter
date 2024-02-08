part of 'details_bloc.dart';

sealed class DetailsEvent {}

final class DetailsRequested extends DetailsEvent {
  final String name;
  final String username;
  final String bio;

  DetailsRequested(
      {required this.name, required this.username, required this.bio});
}

final class DetailsCheckRequested extends DetailsEvent {}

final class DetailsUpdateRequested extends DetailsEvent {}
