import 'package:flutter/material.dart';
import 'package:flutter_application_1/blocc/counter_bloc.dart';
import 'package:flutter_application_1/blocc/counter_event.dart';
import 'package:flutter_application_1/blocc/counter_state.dart';
import 'package:flutter_application_1/ui/component/book_component.dart';
import 'package:flutter_application_1/ui/widgets/book_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color(0xffF8F9FD),
        leading: IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.arrowLeft,
            size: 16,
          ),
        ),
        title: const Text(
          'Add Books Distributed',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 16,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffDBDBDB)),
            ),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(24, 8, 32, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Book'),
                  Spacer(),
                  Text('Quantity'),
                ],
              ),
            ),
          ),
          const BookComponent(),
          Center(
            child: BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
              return ElevatedButton(
                onPressed: () {},
                child: Text('Total: ${state.total}'),
              );
            }),
          )
        ],
      ),
    );
  }
}
