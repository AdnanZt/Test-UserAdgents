// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemDto {
  String get ref => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemDtoCopyWith<ItemDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDtoCopyWith<$Res> {
  factory $ItemDtoCopyWith(ItemDto value, $Res Function(ItemDto) then) =
      _$ItemDtoCopyWithImpl<$Res>;
  $Res call(
      {String ref,
      String title,
      String description,
      String thumbnail,
      double price});
}

/// @nodoc
class _$ItemDtoCopyWithImpl<$Res> implements $ItemDtoCopyWith<$Res> {
  _$ItemDtoCopyWithImpl(this._value, this._then);

  final ItemDto _value;
  // ignore: unused_field
  final $Res Function(ItemDto) _then;

  @override
  $Res call({
    Object? ref = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemDtoCopyWith<$Res> implements $ItemDtoCopyWith<$Res> {
  factory _$$_ItemDtoCopyWith(
          _$_ItemDto value, $Res Function(_$_ItemDto) then) =
      __$$_ItemDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String ref,
      String title,
      String description,
      String thumbnail,
      double price});
}

/// @nodoc
class __$$_ItemDtoCopyWithImpl<$Res> extends _$ItemDtoCopyWithImpl<$Res>
    implements _$$_ItemDtoCopyWith<$Res> {
  __$$_ItemDtoCopyWithImpl(_$_ItemDto _value, $Res Function(_$_ItemDto) _then)
      : super(_value, (v) => _then(v as _$_ItemDto));

  @override
  _$_ItemDto get _value => super._value as _$_ItemDto;

  @override
  $Res call({
    Object? ref = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_ItemDto(
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ItemDto implements _ItemDto {
  const _$_ItemDto(
      {required this.ref,
      required this.title,
      required this.description,
      required this.thumbnail,
      required this.price});

  @override
  final String ref;
  @override
  final String title;
  @override
  final String description;
  @override
  final String thumbnail;
  @override
  final double price;

  @override
  String toString() {
    return 'ItemDto(ref: $ref, title: $title, description: $description, thumbnail: $thumbnail, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemDto &&
            const DeepCollectionEquality().equals(other.ref, ref) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ref),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_ItemDtoCopyWith<_$_ItemDto> get copyWith =>
      __$$_ItemDtoCopyWithImpl<_$_ItemDto>(this, _$identity);
}

abstract class _ItemDto implements ItemDto {
  const factory _ItemDto(
      {required final String ref,
      required final String title,
      required final String description,
      required final String thumbnail,
      required final double price}) = _$_ItemDto;

  @override
  String get ref;
  @override
  String get title;
  @override
  String get description;
  @override
  String get thumbnail;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$_ItemDtoCopyWith<_$_ItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
