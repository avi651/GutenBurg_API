import 'dart:convert';
import 'dart:developer';

import 'package:gutenberg/models/book_model.dart';
import 'package:http/http.dart' as http;
import '../constants/constants.dart';
import '../exceptions/data_exceptions.dart';
import '../exceptions/http_error_handler.dart';

class BookApiServices {
  Future<BookModel>? getBookApiServices(String getBookDetails) async {
    final url = kHostApi + kPath + getBookDetails;

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode != 200) {
        throw Exception(httpErrorHandler(response));
      } else {
        log(response.body);
        final responseBody = json.decode(response.body);

        if (responseBody.isEmpty) {
          throw DataExceptions('Cannot get the data');
        }
        return BookModel.fromJson(responseBody);
      }
    } catch (e) {
      rethrow;
    }
  }
}
