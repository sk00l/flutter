part of 'picker_bloc.dart';

@immutable
sealed class PickerState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class PickerInitial extends PickerState {}

final class PickerInitialLoadInPropgress extends PickerState {}

final class PickerInitialFailure extends PickerState {
  final String error;

  PickerInitialFailure({required this.error});
  @override
  List<Object?> get props => [error];
}

final class PickerInitialSuccess extends PickerState {
  final File? pickedFile;

  PickerInitialSuccess({required this.pickedFile});

  @override
  List<Object?> get props => [pickedFile];
}

// final class PickerFileSuccess extends PickerState {
//   final PlatformFile? pickedFile;

//   PickerFileSuccess({required this.pickedFile});

//   @override
//   List<Object?> get props => [pickedFile];
// }
