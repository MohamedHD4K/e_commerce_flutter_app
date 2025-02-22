import 'package:flutter/material.dart';

class ShowButton extends StatelessWidget {
  const ShowButton(
      {Key? key,
      required this.text,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 12),
            side: BorderSide(width: 0, color: Colors.transparent),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            backgroundColor: Colors.blueGrey[50]),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 8,
              children: [
                Icon(icon, size: 24, color: Colors.black),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ],
            ),
            Icon(
              Icons.keyboard_arrow_right_outlined,
              size: 24,
              color: Colors.grey[700],
            )
          ],
        ),
      ),
    );
  }
}
