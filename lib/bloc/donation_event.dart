part of 'donation_bloc.dart';

abstract class DonationEvent {}

class DonationUpdated extends DonationEvent {
  final int index;
  final double value;

  DonationUpdated(this.index, this.value);
}
