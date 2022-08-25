import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;

import 'package:test_useradgents/app/data/dtos/item_dto.dart';

import 'contract/api_source.dart';

class BigBurgerApiSource implements ApiSource {
  @override
  Future<Either<String, List<ItemDto>>> getMenus() async {
    try {
      final response = await http.get(Uri.parse('https://uad.io/bigburger/'));
      final List<Map<String, dynamic>> data =
          (json.decode(response.body) as List<dynamic>).map((dynamic e) => e as Map<String, dynamic>).toList();

      return Right(data.map((Map<String, dynamic> json) => ItemDto.fromJson(json)).toList());
    } catch (e) {
      return const Left('An error has occured');
    }
  }
}
