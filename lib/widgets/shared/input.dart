import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input(
      {Key? key,
      this.hint = "",
      this.isPassword = false,
      this.isEmail = false,
      this.controller})
      : super(key: key);

  final String hint;
  final bool isPassword;
  final bool isEmail;
  final TextEditingController? controller;

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey[300],
      ),
      child: TextField(
        controller: widget.controller,
        keyboardType:
            widget.isEmail ? TextInputType.emailAddress : TextInputType.text,
        obscureText: _obscureText,
        decoration: InputDecoration(
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off),
                  onPressed: _togglePasswordVisibility,
                )
              : null,
          hintText: widget.hint,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          filled: true,
          contentPadding: EdgeInsets.all(8),
        ),
      ),
    );
  }
}
