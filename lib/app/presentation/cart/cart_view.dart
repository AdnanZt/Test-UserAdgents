import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_useradgents/app/presentation/cart/cubit/cart_cubit.dart';
import 'package:test_useradgents/app/presentation/cart/cubit/cart_state.dart';
import 'package:test_useradgents/app/presentation/components/circle_picture.dart';
import 'package:test_useradgents/app/presentation/dimensions.dart';
import 'package:test_useradgents/app/presentation/models/item.dart';

import '../components/primary_button.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  late CartCubit cubit;

  @override
  void initState() {
    cubit = context.read<CartCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Votre Panier'),
        actions: [
          BlocBuilder<CartCubit, CartState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox.shrink(),
                updated: (items, totalPrice) => _ClearButton(
                  onPressed: () {
                    cubit.clear();
                    Navigator.of(context).pop();
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(
                child: Text('Votre panier est vide'),
              ),
              updated: (items, totalPrice) => Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return _ItemCell(
                          item: item,
                          onRemoveItemPressed: () => _showRemovalModal(context, item),
                        );
                      },
                    ),
                  ),
                  const Divider(),
                  _TotalPrice(totalPrice: totalPrice),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _showRemovalModal(BuildContext context, Item item) {
    _showDestructiveModal(
      context: context,
      title: 'Voulez-vous vraiment supprimer le produit du panier ?',
      onValidatePressed: () {
        context.read<CartCubit>().remove(item);
        Navigator.of(context).pop();
      },
    );
  }
}

void _showDestructiveModal({
  required BuildContext context,
  required String title,
  required VoidCallback onValidatePressed,
}) {
  showModalBottomSheet<void>(
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
    backgroundColor: Colors.white,
    isScrollControlled: true,
    context: context,
    builder: (context) => _ModalBottomSheetBody(
      text: title,
      onValidatePressed: onValidatePressed,
    ),
  );
}

class _ClearButton extends StatelessWidget {
  const _ClearButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _showDestructiveModal(
          context: context,
          title: 'Voulez-vous vraiment vider votre panier ?',
          onValidatePressed: onPressed,
        );
      },
      child: const Text(
        'Vider le panier',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

class _TotalPrice extends StatelessWidget {
  const _TotalPrice({
    Key? key,
    required this.totalPrice,
  }) : super(key: key);

  final double totalPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.bigSpacing),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Total', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          Text('${totalPrice.toStringAsFixed(2)} €', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        ],
      ),
    );
  }
}

class _ItemCell extends StatelessWidget {
  const _ItemCell({Key? key, required this.item, required this.onRemoveItemPressed}) : super(key: key);

  final Item item;
  final VoidCallback onRemoveItemPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CirclePicture(item: item, radius: 30),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('x${item.quantity}'),
          IconButton(
            onPressed: onRemoveItemPressed,
            icon: const Icon(Icons.remove, color: Colors.red),
          ),
        ],
      ),
      title: Text(item.name),
      subtitle: Text('${item.price.toStringAsFixed(2)} €'),
    );
  }
}

class _ModalBottomSheetBody extends StatelessWidget {
  const _ModalBottomSheetBody({
    required this.text,
    required this.onValidatePressed,
  });
  final String text;
  final VoidCallback onValidatePressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: Dimensions.mediumSpacing),
              PrimaryButton(
                text: 'Oui',
                onPressed: onValidatePressed,
                width: 250,
                textColor: Colors.white,
                primary: Colors.orange[500],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
