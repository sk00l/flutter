import 'package:flutter/material.dart';
import 'package:flutter_application_1/blocc/counter_bloc.dart';
import 'package:flutter_application_1/blocc/counter_event.dart';
import 'package:flutter_application_1/blocc/counter_state.dart';
import 'package:flutter_application_1/model/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookWidget extends StatelessWidget {
  final BookModel post;
  final CounterBloc counterBloc;
  const BookWidget({Key? key, required this.post, required this.counterBloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 8, 0, 8),
      child: Row(
        children: [
          Text(post.bookAb),
          const SizedBox(width: 16), // Adjust spacing as needed
          Expanded(
            child: Text(
              post.bookname,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 16), // Adjust spacing as needed
          Row(
            children: [
              IconButton(
                onPressed: () {
                  counterBloc.add(DecrementCounter());
                },
                icon: const Icon(
                  Icons.remove_circle_outline,
                  size: 20,
                  color: Colors.green,
                ),
              ),
              BlocBuilder<CounterBloc, CounterState>(
                bloc: counterBloc,
                builder: (context, state) {
                  return Text(state.counter.toString());
                },
              ),
              IconButton(
                onPressed: () {
                  counterBloc.add(IncrementCounter());
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
