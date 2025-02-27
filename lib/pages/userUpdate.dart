import 'package:e_commerce_flutter_app/widgets/shared/customButton.dart';
import 'package:e_commerce_flutter_app/widgets/shared/customInput.dart';
import 'package:flutter/material.dart';

class UserUpdate extends StatelessWidget {
  const UserUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateUserUpdate();
  }
}

class StateUserUpdate extends StatefulWidget {
  const StateUserUpdate({Key? key}) : super(key: key);

  @override
  _UserUpdateState createState() => _UserUpdateState();
}

class _UserUpdateState extends State<StateUserUpdate> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final String username = "Mohammed";

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final data = {
        "username": _usernameController.text,
        "email": _emailController.text,
        "oldPassword": _oldPasswordController.text,
        "newPassword": _newPasswordController.text,
      };
      print(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
          child: Text(
            "Edit Profile",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                spacing: 30,
                children: [
                  Column(
                    spacing: 10,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/avatar.png"),
                      ),
                      Text(
                        username,
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      spacing: 10,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Input(
                          hint: "Enter your Username",
                          controller: _usernameController,
                          prefixIcon: Icon(Icons.person),
                        ),
                        Input(
                          isEmail: true,
                          hint: "Enter your Email",
                          controller: _emailController,
                          prefixIcon: Icon(Icons.email),
                        ),
                        Input(
                          isPassword: true,
                          hint: "Enter your old Password",
                          controller: _oldPasswordController,
                          prefixIcon: Icon(Icons.lock),
                        ),
                        Input(
                          isPassword: true,
                          hint: "Enter your new Password",
                          controller: _newPasswordController,
                          prefixIcon: Icon(Icons.password),
                        ),
                        CustomButton(child: Text("Edit"), onPressed: _submitForm)
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }
}
