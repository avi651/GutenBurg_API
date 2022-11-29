import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:gutenberg/models/book_model.dart';
import 'package:gutenberg/services/book_data_services.dart';

import '../exceptions/data_exceptions.dart';
import '../helpers/custom_error.dart';

class BookDataRepository {
  final BookApiServices bookApiServices;

  BookDataRepository({
    required this.bookApiServices,
  });

  Future<BookModel> fetchBookData(String getBookDetails) async {
    try {
      final BookModel? bookModel =
          await bookApiServices.getBookApiServices(getBookDetails);

      if (kDebugMode) {
        log('Contintal: ${bookModel!}');
      }
      final bookMap = BookModel.fromJson(bookModel!.toJson());

      return bookMap;
    } on DataExceptions catch (e) {
      throw CustomError(errMsg: e.message);
    } catch (e) {
      throw CustomError(errMsg: e.toString());
    }
  }
}
