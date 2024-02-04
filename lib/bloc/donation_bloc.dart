import 'package:bloc/bloc.dart';

part 'donation_event.dart';
part 'donation_state.dart';

class DonationBloc extends Bloc<DonationEvent, DonationState> {
  DonationBloc() : super(DonationState(donations: List.filled(5, 0.0))) {
    on<DonationUpdated>((event, emit) {
      List<double> updatedDonations = List.from(state.donations);

      if (event.index >= 0 && event.index < updatedDonations.length) {
        updatedDonations[event.index] = event.value;
      } else {}

      emit(DonationState(donations: updatedDonations));
    });
  }
}
