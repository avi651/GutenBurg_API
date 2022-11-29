import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:gutenberg/exceptions/data_exceptions.dart';
import 'package:gutenberg/models/home_model.dart';

class HomeDataServices {
  Future<List<HomeModel>> getHomeDataServices() async {
    try {
      final String response =
          await rootBundle.loadString("assets/json/home_json.json");
      var responseBody = await json.decode(response) as List<dynamic>;
      if (responseBody.isEmpty) {
        throw DataExceptions('Cannot get the data');
      }
      return responseBody.map((e) => HomeModel.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
