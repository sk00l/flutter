import 'package:flutter/material.dart';
import 'package:flutter_application_1/blocc/counter_bloc.dart';
import 'package:flutter_application_1/blocc/counter_event.dart';
import 'package:flutter_application_1/blocc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 8, 0, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('AHN'),
          const SizedBox(
            width: 60,
          ),
          const Text('Ancient Health DVD'),
          const SizedBox(width: 36),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  context.read<CounterBloc>().add(DecrementCounter());
                },
                icon: const Icon(
                  Icons.remove_circle_outline,
                  size: 20,
                  color: Colors.green,
                ),
              ),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Text(state.counter.toString());
                },
              ),
              IconButton(
                onPressed: () {
                  context.read<CounterBloc>().add(IncrementCounter());
                },
                icon: const Icon(
                  Icons.add_circle_outline,
                  size: 20,
                  color: Colors.green,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
