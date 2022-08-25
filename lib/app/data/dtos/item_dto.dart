import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_dto.freezed.dart';

@freezed
class ItemDto with _$ItemDto {
  const factory ItemDto({
    required String ref,
    required String title,
    required String description,
    required String thumbnail,
    required double price,
  }) = _ItemDto;

  factory ItemDto.fromJson(Map<String, dynamic> json) {
    return ItemDto(
        ref: json['ref'] as String,
        title: json['title'] as String,
        description: json['description'] as String,
        thumbnail: json['thumbnail'] as String,
        price: (json['price'] as int) / 100.0);
  }
}
