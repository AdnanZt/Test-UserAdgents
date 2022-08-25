import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:test_useradgents/app/data/sources/big_burger_api_source.dart';
import 'package:test_useradgents/app/presentation/cart/cubit/cart_cubit.dart';
import 'package:test_useradgents/app/presentation/menu/cubit/menu_cubit.dart';

import 'app/presentation/menu/menu_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => BigBurgerApiSource(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<CartCubit>(
            create: (BuildContext context) => CartCubit(),
          ),
          BlocProvider<MenuCubit>(
            create: (BuildContext context) => MenuCubit(
              source: context.read<BigBurgerApiSource>(),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Big Burger',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            primarySwatch: Colors.orange,
          ),
          home: const MenuView(),
        ),
      ),
    );
  }
}
