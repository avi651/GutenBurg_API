import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gutenberg/bloc/book_cubit/book_state.dart';
import 'package:gutenberg/repository/book_data_repository.dart';
import '../../helpers/custom_error.dart';

class BookCubit extends Cubit<BookDataState> {
  final BookDataRepository bookDataRepository;

  BookCubit({required this.bookDataRepository})
      : super(const BookDataState.initial());

  Future<void> fetchBookData(String bookId) async {
    emit(const BookDataStateLoading());
    try {
      await bookDataRepository.fetchBookData(bookId).then((bookData) {
        emit(BookStateSuccess(bookData));
      });
    } on CustomError catch (e) {
      emit(BookDataStateError(e.toString()));
    }
    log(state.toString());
  }
}
