part of 'donation_bloc.dart';

class DonationState {
  final List<double> donations;

  DonationState({required this.donations});

  double get totalDonation =>
      donations.fold(0.0, (sum, element) => sum + element);
}
