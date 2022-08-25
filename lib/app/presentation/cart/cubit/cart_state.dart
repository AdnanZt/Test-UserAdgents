import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_useradgents/app/presentation/models/item.dart';


part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = CartStateInitial;
  const factory CartState.updated(List<Item> items, double totalPrice) =
      CartStateUpdated;
}
