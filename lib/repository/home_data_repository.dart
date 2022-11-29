import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:gutenberg/exceptions/data_exceptions.dart';
import 'package:gutenberg/models/home_model.dart';
import 'package:gutenberg/services/home_data_services.dart';

import '../helpers/custom_error.dart';

class HomeDataRepository {
  final HomeDataServices homeDataServices;

  HomeDataRepository({
    required this.homeDataServices,
  });

  Future<List<HomeModel>> fetchHomeData() async {
    try {
      final List<HomeModel> homeModel =
          await homeDataServices.getHomeDataServices();
      if (kDebugMode) {
        log('Contintal: ${homeModel}');
      }
      return homeModel;
    } on DataExceptions catch (e) {
      throw CustomError(errMsg: e.message);
    } catch (e) {
      throw CustomError(errMsg: e.toString());
    }
  }
}
