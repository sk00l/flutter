import 'package:assignment8/bloc/picker_bloc.dart';
import 'package:assignment8/ui/screens/picker_screen.dart';
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
      create: (context) => PickerBloc(),
      child: const MaterialApp(
        home: PickerScreen(),
      ),
    );
  }
}
