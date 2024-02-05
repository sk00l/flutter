import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';
import 'package:meta/meta.dart';

part 'picker_event.dart';
part 'picker_state.dart';

class PickerBloc extends Bloc<PickerEvent, PickerState> {
  PickerBloc() : super(PickerInitial()) {
    on<FilePickerRequesteed>((event, emit) async {
      emit(PickerInitialLoadInPropgress());
      try {
        FilePickerResult? result = await FilePicker.platform.pickFiles();

        if (result != null) {
          File file = File(result.files.single.path!);
          emit(PickerInitialSuccess(pickedFile: file));
        } else {
          emit(PickerInitialFailure(error: "you got an error, fix it"));
        }
      } catch (e) {
        emit(PickerInitialFailure(error: e.toString()));
      }
    });
    on<FilePickerfileRequesteed>((event, emit) async {
      emit(PickerInitialLoadInPropgress());
      try {
        FilePickerResult? result = await FilePicker.platform.pickFiles();

        if (result != null) {
          PlatformFile file = result.files.first;

          emit(PickerFileSuccess(pickedFile: file));
        } else {
          emit(PickerInitialFailure(error: "you got an error, fix it"));
        }
      } catch (e) {
        emit(PickerInitialFailure(error: e.toString()));
      }
    });
  }
}
