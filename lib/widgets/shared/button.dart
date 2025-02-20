import 'package:flutter/material.dart';
import 'package:e_commerce_flutter_app/widgets/constants/colors.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.child, required this.onPressed})
      : super(key: key);

  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: btnGreen,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3))),
          child: child),
    );
  }
}
