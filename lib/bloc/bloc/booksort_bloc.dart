import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'booksort_event.dart';
part 'booksort_state.dart';

class BookSortBloc extends Bloc<BookSortEvent, BookSortState> {
  BookSortBloc() : super(GetBookGridView()) {
    on<LayoutChangeRequested>((event, emit) {
      if (state is GetBookListView) {
        emit(GetBookGridView());
      } else {
        emit(GetBookListView());
      }
    });

    on<BookSelected>((event, emit) {
      emit(BookSelectedState(event.bookIndex));
    });
  }
}
