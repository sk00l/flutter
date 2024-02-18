import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_application/bloc/bloc/booksort_bloc.dart';
import 'package:new_application/data/book_list_data.dart';

class BookListView extends StatefulWidget {
  const BookListView({Key? key}) : super(key: key);

  @override
  _BookListViewState createState() => _BookListViewState();
}

class _BookListViewState extends State<BookListView> {
  int? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookSortBloc, BookSortState>(
      builder: (context, state) {
        int? selectedValue;
        if (state is BookSelectedState) {
          selectedValue = state.selectedBookIndex;
        }
        return ListView.builder(
          shrinkWrap: true,
          itemCount: BookListData.bookList.length,
          itemBuilder: (context, index) {
            final book = BookListData.bookList[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: SizedBox(
                height: 160,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
                  child: InkWell(
                    onTap: () {
                      BlocProvider.of<BookSortBloc>(context)
                          .add(BookSelected(index));
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 250,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              book.coverImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ), // Add spacing between image and text
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                book.name,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                                softWrap: false,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                book.publisher,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[600]),
                              ),
                              const Spacer(),
                              Text(
                                "By ${book.author} - ${book.yearOfPub}",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[800]),
                              ),
                              const Divider(
                                height: 0.5,
                                thickness: 0.5,
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Radio<int>(
                            value: index,
                            groupValue: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                BlocProvider.of<BookSortBloc>(context)
                                    .add(BookSelected(value!));
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
