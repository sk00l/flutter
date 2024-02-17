import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_application/bloc/bloc/booksort_bloc.dart';
import 'package:new_application/ui/screens/add_book_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookSortBloc(),
      child: const MaterialApp(
        home: AddBookScreen(),
      ),
    );
  }
}
