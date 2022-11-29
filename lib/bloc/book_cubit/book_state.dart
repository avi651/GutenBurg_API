import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gutenberg/models/book_model.dart';
part 'book_state.freezed.dart';

@freezed
class BookDataState with _$BookDataState {
  const factory BookDataState.initial() = BookDataStateInitial;
  const factory BookDataState.loading() = BookDataStateLoading;
  const factory BookDataState.success(BookModel bookModel) = BookStateSuccess;
  const factory BookDataState.error(String message) = BookDataStateError;
}
