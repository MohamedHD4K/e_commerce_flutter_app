import 'package:e_commerce_flutter_app/widgets/constants/colors.dart';
import 'package:e_commerce_flutter_app/widgets/shared/button.dart';
import 'package:e_commerce_flutter_app/widgets/shared/input.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulLogin();
  }
}

class StatefulLogin extends StatefulWidget {
  const StatefulLogin({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<StatefulLogin> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final data = {
        "username": _usernameController.text,
        "password": _passwordController.text,
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
          "Log in",
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
                isPassword: true,
                hint: "Enter your Password",
                controller: _passwordController,
              ),
              Button(
                onPressed: _submitForm,
                child: Text("Log in", style: TextStyle(fontSize: 15)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
