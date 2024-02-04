import 'package:assignment7/bloc/donation_bloc.dart';
import 'package:assignment7/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DonationBloc(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
