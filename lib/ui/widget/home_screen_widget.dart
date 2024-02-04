import 'package:assignment7/bloc/donation_bloc.dart';
import 'package:assignment7/ui/components/text_field_component.dart';
import 'package:assignment7/ui/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Enter donations received for Today'),
                    SizedBox(
                      width: 40,
                    ),
                    Icon(Icons.calendar_month_outlined),
                    Text('Jan, 2024'),
                  ],
                ),
                SizedBox(height: 24),
                TextFieldComponent(
                  textBoxTitles: [
                    'Cash',
                    'Checks',
                    'Post-dated Checks',
                    'Credit Cards',
                    'E-payment'
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          BlocBuilder<DonationBloc, DonationState>(
            builder: (context, state) {
              bool isButtonEnabled = state.totalDonation > 0;
              return Container(
                color: Colors.white,
                height: 130,
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('Total Donation Collected'),
                        const Spacer(),
                        Text("${state.totalDonation}"),
                      ],
                    ),
                    const SizedBox(height: 12),
                    buildProfileButton(context, isButtonEnabled),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
