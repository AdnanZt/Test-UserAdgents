import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_useradgents/app/presentation/cart/cart_view.dart';
import 'package:test_useradgents/app/presentation/cart/cubit/cart_cubit.dart';
import 'package:test_useradgents/app/presentation/components/primary_button.dart';
import 'package:test_useradgents/app/presentation/dimensions.dart';
import 'package:test_useradgents/app/presentation/menu/cubit/menu_cubit.dart';
import 'package:test_useradgents/app/presentation/menu/cubit/menu_state.dart';
import 'package:test_useradgents/app/presentation/models/item.dart';

import '../cart/cubit/cart_state.dart';
import '../components/circle_picture.dart';

class MenuView extends StatefulWidget {
  const MenuView({
    Key? key,
  }) : super(key: key);

  @override
  MenuViewState createState() => MenuViewState();
}

class MenuViewState extends State<MenuView> {
  late MenuCubit cubit;

  @override
  void initState() {
    cubit = context.read<MenuCubit>();
    context.read<CartCubit>();
    cubit.fetchMenus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const _CartFloatingActionButton(),
      appBar: AppBar(title: const Text('Big Burger')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          BlocBuilder<MenuCubit, MenuState>(
            builder: (context, state) {
              return state.when(
                loading: () => const Center(
                  child: SizedBox(
                    height: 15,
                    width: 15,
                    child: CircularProgressIndicator(),
                  ),
                ),
                error: (message) => Center(
                  child: Text(message),
                ),
                loaded: (items) => Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return ListTile(
                        title: Row(
                          children: [
                            CirclePicture(item: item, radius: 30),
                            const SizedBox(width: 20),
                            Expanded(child: Text(item.name)),
                          ],
                        ),
                        trailing: Text('${item.price.toStringAsFixed(2)} €'),
                        onTap: () => buildModalBottomSheet(context, item),
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Future<dynamic> buildModalBottomSheet(BuildContext context, Item item) {
    return showModalBottomSheet<void>(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      backgroundColor: Colors.white,
      isScrollControlled: true,
      context: context,
      builder: (context) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.bigSpacing),
          child: Column(
            children: [
              CirclePicture(item: item, radius: 50),
              const SizedBox(height: Dimensions.smallSpacing),
              Text(item.name.toUpperCase()),
              const SizedBox(height: Dimensions.smallSpacing),
              Text(
                '${item.price.toStringAsFixed(2)} €',
              ),
              const SizedBox(height: Dimensions.bigSpacing),
              Text(item.description),
              const SizedBox(height: Dimensions.biggestSpacing),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.info, color: Colors.black),
                  SizedBox(width: 25),
                  Expanded(child: Text('Informations produits / Allergènes')),
                  Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20),
                ],
              ),
              const SizedBox(height: Dimensions.biggestSpacing),
              const Text('Quantité'),
              const SizedBox(height: Dimensions.smallSpacing),
              _ItemQuantity(item: item),
              const SizedBox(height: Dimensions.biggestSpacing),
            ],
          ),
        ),
      ),
    );
  }
}

class _CartFloatingActionButton extends StatelessWidget {
  const _CartFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: (() {
        Navigator.of(context).push<void>(
          MaterialPageRoute(
            builder: (context) => const CartView(),
          ),
        );
      }),
      label: const _FloatingButtonLabel(),
      icon: const Icon(Icons.shopping_cart),
      backgroundColor: Colors.orange,
    );
  }
}

class _FloatingButtonLabel extends StatelessWidget {
  const _FloatingButtonLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(15)),
        child: BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Text(
                '0',
                textAlign: TextAlign.center,
              ),
              updated: (items, totalPrice) => Text(
                items.length.toString(),
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ItemQuantity extends StatefulWidget {
  const _ItemQuantity({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  State<_ItemQuantity> createState() => _ItemQuantityState();
}

class _ItemQuantityState extends State<_ItemQuantity> {
  int itemCount = 1;

  @override
  Widget build(BuildContext context) {
    const double iconSize = 30;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    if (itemCount > 0) itemCount--;
                  });
                },
                icon: const Icon(Icons.remove, size: iconSize, color: Colors.orange)),
            Text(itemCount.toString(), style: Theme.of(context).textTheme.bodyText1),
            IconButton(
                onPressed: () {
                  setState(() => itemCount++);
                },
                icon: const Icon(Icons.add, size: iconSize, color: Colors.orange))
          ],
        ),
        const SizedBox(height: Dimensions.biggestSpacing),
        PrimaryButton(
          text: 'Ajouter au panier',
          width: 250,
          textColor: Colors.white,
          onPressed: itemCount == 0
              ? null
              : () {
                  context.read<CartCubit>().add(widget.item.copyWith(quantity: itemCount));
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${widget.item.name} a été ajouté à votre panier')),
                  );
                },
          primary: Colors.orange[500],
        ),
      ],
    );
  }
}
