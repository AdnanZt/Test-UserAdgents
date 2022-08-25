// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Item> items, double totalPrice) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items, double totalPrice)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items, double totalPrice)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartStateInitial value) initial,
    required TResult Function(CartStateUpdated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CartStateInitial value)? initial,
    TResult Function(CartStateUpdated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartStateInitial value)? initial,
    TResult Function(CartStateUpdated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;
}

/// @nodoc
abstract class _$$CartStateInitialCopyWith<$Res> {
  factory _$$CartStateInitialCopyWith(
          _$CartStateInitial value, $Res Function(_$CartStateInitial) then) =
      __$$CartStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartStateInitialCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements _$$CartStateInitialCopyWith<$Res> {
  __$$CartStateInitialCopyWithImpl(
      _$CartStateInitial _value, $Res Function(_$CartStateInitial) _then)
      : super(_value, (v) => _then(v as _$CartStateInitial));

  @override
  _$CartStateInitial get _value => super._value as _$CartStateInitial;
}

/// @nodoc

class _$CartStateInitial implements CartStateInitial {
  const _$CartStateInitial();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Item> items, double totalPrice) updated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items, double totalPrice)? updated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items, double totalPrice)? updated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartStateInitial value) initial,
    required TResult Function(CartStateUpdated value) updated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CartStateInitial value)? initial,
    TResult Function(CartStateUpdated value)? updated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartStateInitial value)? initial,
    TResult Function(CartStateUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CartStateInitial implements CartState {
  const factory CartStateInitial() = _$CartStateInitial;
}

/// @nodoc
abstract class _$$CartStateUpdatedCopyWith<$Res> {
  factory _$$CartStateUpdatedCopyWith(
          _$CartStateUpdated value, $Res Function(_$CartStateUpdated) then) =
      __$$CartStateUpdatedCopyWithImpl<$Res>;
  $Res call({List<Item> items, double totalPrice});
}

/// @nodoc
class __$$CartStateUpdatedCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements _$$CartStateUpdatedCopyWith<$Res> {
  __$$CartStateUpdatedCopyWithImpl(
      _$CartStateUpdated _value, $Res Function(_$CartStateUpdated) _then)
      : super(_value, (v) => _then(v as _$CartStateUpdated));

  @override
  _$CartStateUpdated get _value => super._value as _$CartStateUpdated;

  @override
  $Res call({
    Object? items = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_$CartStateUpdated(
      items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CartStateUpdated implements CartStateUpdated {
  const _$CartStateUpdated(final List<Item> items, this.totalPrice)
      : _items = items;

  final List<Item> _items;
  @override
  List<Item> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final double totalPrice;

  @override
  String toString() {
    return 'CartState.updated(items: $items, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateUpdated &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other.totalPrice, totalPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(totalPrice));

  @JsonKey(ignore: true)
  @override
  _$$CartStateUpdatedCopyWith<_$CartStateUpdated> get copyWith =>
      __$$CartStateUpdatedCopyWithImpl<_$CartStateUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Item> items, double totalPrice) updated,
  }) {
    return updated(items, totalPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items, double totalPrice)? updated,
  }) {
    return updated?.call(items, totalPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items, double totalPrice)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(items, totalPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartStateInitial value) initial,
    required TResult Function(CartStateUpdated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CartStateInitial value)? initial,
    TResult Function(CartStateUpdated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartStateInitial value)? initial,
    TResult Function(CartStateUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class CartStateUpdated implements CartState {
  const factory CartStateUpdated(
      final List<Item> items, final double totalPrice) = _$CartStateUpdated;

  List<Item> get items;
  double get totalPrice;
  @JsonKey(ignore: true)
  _$$CartStateUpdatedCopyWith<_$CartStateUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
