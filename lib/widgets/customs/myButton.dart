import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
      required this.backgroundColor,
      required this.borderColor,
      required this.height,
      required this.width,
      required this.child,
      required this.borderRadius,
      this.padding})
      : super(key: key);

  final Color borderColor;
  final double width;
  final double height;
  final Color backgroundColor;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: OutlinedButton(
            onPressed: null,
            child: child,
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 1, color: borderColor),
              padding: padding,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius)),
              backgroundColor: backgroundColor,
            )));
  }
}
