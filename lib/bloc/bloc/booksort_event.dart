part of 'booksort_bloc.dart';

// @immutable
abstract class BookSortEvent {}

class LayoutChangeRequested extends BookSortEvent {}

class BookSelected extends BookSortEvent {
  final int bookIndex;

  BookSelected(this.bookIndex);
}
