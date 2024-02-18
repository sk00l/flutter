// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'booksort_bloc.dart';

// @immutable
abstract class BookSortState {}

final class GetBookListView extends BookSortState {}

final class GetBookGridView extends BookSortState {}

class BookSelectedState extends BookSortState {
  final int selectedBookIndex;

  BookSelectedState(
    this.selectedBookIndex,
  );
}
