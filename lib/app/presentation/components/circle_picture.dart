import 'package:flutter/material.dart';
import 'package:test_useradgents/app/presentation/models/item.dart';

class CirclePicture extends StatelessWidget {
  const CirclePicture({Key? key, required this.item, required this.radius}) : super(key: key);

  final Item item;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black,
      radius: radius,
      backgroundImage: NetworkImage(item.thumbnail),
    );
  }
}
