import 'package:flutter/material.dart';

import 'package:test_useradgents/app/data/dtos/item_dto.dart';

@immutable
class Item {
  final String name;

  final double price;

  final int quantity;

  final String description;

  final String thumbnail;

  const Item({
    required this.name,
    required this.price,
    required this.quantity,
    required this.description,
    required this.thumbnail,
  });

  factory Item.fromItemDto(ItemDto dto) {
    return Item(
      name: dto.title,
      price: dto.price,
      quantity: 0,
      description: dto.description,
      thumbnail: dto.thumbnail,
    );
  }

  Item copyWith({
    String? name,
    double? price,
    int? quantity,
    String? description,
    String? thumbnail,
  }) {
    return Item(
      name: name ?? this.name,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      description: description ?? this.description,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }
}
