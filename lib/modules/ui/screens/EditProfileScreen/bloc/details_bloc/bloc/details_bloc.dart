import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:instagram_app/modules/ui/screens/EditProfileScreen/bloc/details_bloc/repository/details_repository.dart';

part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc({required this.detailsAuthRepository}) : super(DetailsInitial()) {
    on<DetailsRequested>((event, emit) async {
      emit(DetailsLoadInProgress());

      await Future.delayed(const Duration(seconds: 2));

      await detailsAuthRepository.saveDetailsInfo(
          event.name, event.username, event.bio);
    });
  }

  DetailsAuthRepository detailsAuthRepository;
}
