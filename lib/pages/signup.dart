import 'package:e_commerce_flutter_app/widgets/constants/colors.dart';
import 'package:e_commerce_flutter_app/widgets/shared/button.dart';
import 'package:e_commerce_flutter_app/widgets/shared/input.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulSignup();
  }
}

class StatefulSignup extends StatefulWidget {
  const StatefulSignup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<StatefulSignup> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final data = {
        "username": _usernameController.text,
        "password": _passwordController.text,
        "email": _emailController.text,
      };
      print(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarGreen,
        title: Text(
          "Sign up",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            spacing: 5,
            children: [
              Input(
                hint: "Enter your Username",
                controller: _usernameController,
              ),
              Input(
                isEmail: true,
                hint: "Enter your Email",
                controller: _emailController,
              ),
              Input(
                isPassword: true,
                hint: "Enter your Password",
                controller: _passwordController,
              ),
              Button(
                onPressed: _submitForm,
                child: Text("Register", style: TextStyle(fontSize: 15)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
