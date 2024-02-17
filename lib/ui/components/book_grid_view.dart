import 'package:flutter/material.dart';
import 'package:new_application/data/book_list_data.dart';

class BookGridView extends StatefulWidget {
  const BookGridView({Key? key}) : super(key: key);

  @override
  State<BookGridView> createState() => _BookGridViewState();
}

class _BookGridViewState extends State<BookGridView> {
  int? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        child: GridView.builder(
          itemCount: BookListData.bookList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // childAspectRatio: (itemWidth / itemHeight),
            childAspectRatio: 1 / 2.5,
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 5.0,
          ),
          itemBuilder: (context, index) {
            final book = BookListData.bookList[index];
            return Column(
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
                          disabledColor: Colors.white, // Change disabled color
                        ),
                        child: Radio<int>(
                          activeColor: Colors.white,
                          value: index,
                          groupValue: _selectedValue,
                          onChanged: (value) {
                            setState(() {
                              _selectedValue = value;
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
            );
          },
        ),
      ),
    );
  }
}
