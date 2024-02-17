// add_book_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_application/bloc/bloc/booksort_bloc.dart';
import 'package:new_application/ui/components/book_grid_view.dart';
import 'package:new_application/ui/components/book_list_view.dart';
import 'package:new_application/ui/widgets/get_book_list.dart';

class AddBookScreen extends StatelessWidget {
  const AddBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Book'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'All',
                  style: TextStyle(fontSize: 16),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.chevronDown,
                    size: 16,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    context.read<BookSortBloc>().add(LayoutChangeRequested());
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.listUl,
                    size: 16,
                  ),
                ),
              ],
            ),
            const Expanded(child: GetBookList()),
          ],
        ),
      ),
    );
  }
}
