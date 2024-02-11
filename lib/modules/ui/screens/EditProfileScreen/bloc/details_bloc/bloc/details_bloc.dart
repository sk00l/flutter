import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_app/models/user_details_model.dart';

import 'package:instagram_app/modules/ui/screens/EditProfileScreen/bloc/details_bloc/repository/details_repository.dart';
import 'package:meta/meta.dart';

part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc({required this.detailsAuthRepository}) : super(DetailsInitial()) {
    on<DetailsSaveRequested>((event, emit) async {
      emit(DetailsLoadInProgress());
      try {
        await detailsAuthRepository.saveDetailsInfo(
            event.name, event.username, event.bio);
        emit(const DetailsLoadSuccess(
            successMessage: "details saved successfully"));
        add(DetailsLoadRequested());
      } catch (e) {
        emit(DetailsLoadFailure(failureMessage: e.toString()));
      }
    });

    on<DetailsLoadRequested>((event, emit) {
      try {
        final userDetails = detailsAuthRepository.getDetailsInfo();
        emit(DetailsLoaded(userDetails));
      } catch (e) {
        emit(DetailsLoadFailure(failureMessage: e.toString()));
      }
    });
  }

  DetailsAuthRepository detailsAuthRepository;
}
