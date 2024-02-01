import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/post_data.dart';
import 'package:flutter_application_1/ui/widgets/book_widget.dart';
import 'package:flutter_application_1/blocc/counter_bloc.dart'; // Import CounterBloc

class BookComponent extends StatefulWidget {
  const BookComponent({super.key});

  @override
  State<BookComponent> createState() => _BookComponentState();
}

class _BookComponentState extends State<BookComponent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: BookListData.bookModelList.length,
        itemBuilder: (context, index) {
          final post = BookListData.bookModelList[index];
          // Create a new instance of CounterBloc for each BookWidget
          final counterBloc = CounterBloc();
          return BookWidget(
              post: post, counterBloc: counterBloc); // Provide CounterBloc
        },
      ),
    );
  }
}
