import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../dtos/item_dto.dart';

abstract class ApiSource {
  Future<Either<String, List<ItemDto>>> getMenus();
}
