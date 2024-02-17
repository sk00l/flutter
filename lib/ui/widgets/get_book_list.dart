import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_application/bloc/bloc/booksort_bloc.dart';
import 'package:new_application/ui/components/book_grid_view.dart';
import 'package:new_application/ui/components/book_list_view.dart';

class GetBookList extends StatefulWidget {
  const GetBookList({super.key});

  @override
  State<GetBookList> createState() => _GetBookListState();
}

class _GetBookListState extends State<GetBookList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookSortBloc, BookSortState>(builder: (context, index) {
      if (index is GetBookListView) {
        return const BookListView();
      } else if (index is GetBookGridView) {
        return const BookGridView();
      } else {
        return const SizedBox();
      }
    });
  }
}
