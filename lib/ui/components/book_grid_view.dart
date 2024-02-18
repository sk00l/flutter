import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_application/bloc/bloc/booksort_bloc.dart';
import 'package:new_application/data/book_list_data.dart';

class BookGridView extends StatefulWidget {
  const BookGridView({Key? key}) : super(key: key);

  @override
  State<BookGridView> createState() => _BookGridViewState();
}

class _BookGridViewState extends State<BookGridView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        child: BlocBuilder<BookSortBloc, BookSortState>(
          builder: (context, state) {
            int? selectedValue;
            if (state is BookSelectedState) {
              selectedValue = state.selectedBookIndex;
            }
            return GridView.builder(
              shrinkWrap: true,
              itemCount: BookListData.bookList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 2.4,
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 5.0,
              ),
              itemBuilder: (context, index) {
                final book = BookListData.bookList[index];
                // final isSelected = state is BookSelectedState &&
                //     state.selectedBookIndex == index;
                return InkWell(
                  onTap: () {
                    BlocProvider.of<BookSortBloc>(context)
                        .add(BookSelected(index));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                book.coverImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor:
                                    Colors.white, // Change unselected color
                                disabledColor:
                                    Colors.white, // Change disabled color
                              ),
                              child: Radio<int>(
                                activeColor: Colors.white,
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
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
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
                        book.author,
                        style: TextStyle(fontSize: 12, color: Colors.grey[800]),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
