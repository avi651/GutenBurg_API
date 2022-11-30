import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:gutenberg/models/home_model.dart';

void main() {
  group('Home Test', () {
    test('Home model test', () {
      final file = File('assets/json/home_json.json').readAsStringSync();
      final homeData = HomeModel.fromJson(
          (jsonDecode(file) as List).first as Map<String, dynamic>);
      expect(homeData.id, 1);
    });
  });
}
