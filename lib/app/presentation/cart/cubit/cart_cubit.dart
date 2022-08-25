import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:test_useradgents/app/presentation/cart/cubit/cart_state.dart';
import 'package:test_useradgents/app/presentation/models/item.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState.initial());

  void add(Item newItem) {
    final state = this.state;

    state.when(
      initial: () => emit(CartState.updated([newItem], newItem.price)),
      updated: (items, totalPrice) {
        final foundItem =
            items.firstWhereOrNull((item) => item.name == newItem.name);

        if (foundItem != null) {
          final newQuantity = foundItem.quantity + newItem.quantity;
          final newPrice = foundItem.price + newItem.price;
          final index = items.indexOf(foundItem);
          final updatedItems = List<Item>.from(items);
          updatedItems[index] =
              foundItem.copyWith(quantity: newQuantity, price: newPrice);
          emit(
            (state as CartStateUpdated).copyWith(
                items: updatedItems, totalPrice: totalPrice + newItem.price),
          );
        } else {
          emit(
            (state as CartStateUpdated).copyWith(
                items: [...items, newItem],
                totalPrice: totalPrice + newItem.price),
          );
        }
      },
    );
  }

  void clear() {
    emit(const CartState.initial());
  }

  void remove(Item item) {
    state.maybeWhen(
      updated: (items, totalPrice) {
        final updatedItems = List<Item>.from(items);
        updatedItems.remove(item);
        if (updatedItems.isEmpty) {
          clear();
        } else {
          emit(
            (state as CartStateUpdated).copyWith(
              items: updatedItems,
              totalPrice: totalPrice - item.price,
            ),
          );
        }
      },
      orElse: () {},
    );
  }

  void getTotalPrice() {
    state.maybeWhen(
      updated: (items, totalPrice) {
        final total = items.map((e) => e.price).reduce((p1, p2) => p1 + p2);
        emit((state as CartStateUpdated)
            .copyWith(items: items, totalPrice: total));
      },
      orElse: () {},
    );
  }
}
