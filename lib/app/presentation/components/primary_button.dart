import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    this.width = 400,
    this.height = 45,
    required this.onPressed,
    this.primary,
    this.textColor = Colors.black,
  }) : super(key: key);

  final String text;
  final double width;
  final double? height;
  final VoidCallback? onPressed;
  final Color? primary;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            primary: primary ?? Colors.grey),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
