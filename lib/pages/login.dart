import 'package:e_commerce_flutter_app/widgets/constants/colors.dart';
import 'package:e_commerce_flutter_app/widgets/shared/customButton.dart';
import 'package:e_commerce_flutter_app/widgets/shared/customInput.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submitForm() async {
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
       title: Center(
          child: Text(
            "Log in",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Form(
          key: _formKey,
          child: Column(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                spacing: 10,
                children: [
                  Input(
                    hint: "Enter your Username",
                    controller: _usernameController,
                    prefixIcon: Icon(Icons.email),
                  ),
                  Input(
                    isPassword: true,
                    hint: "Enter your Password",
                    controller: _passwordController,
                    prefixIcon: Icon(Icons.password),
                  ),
                ],
              ),
              TextButton(onPressed: null, child: Text("Forget your password?")),
              CustomButton(
                onPressed: _submitForm,
                child: Text("Log in", style: TextStyle(fontSize: 15)),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    TextButton(
                        onPressed: () =>
                            Navigator.pushReplacementNamed(context, "/signup"),
                        child: Text(
                          "Sign up",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ]),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  )),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("or")),
                  Expanded(
                      child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 18),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: SvgPicture.asset(
                          "assets/images/facebook.svg",
                          color: btnGreen,
                          width: 30,
                        )),
                    OutlinedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 18),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: SvgPicture.asset(
                          "assets/images/linkedin.svg",
                          color: btnGreen,
                          width: 30,
                        )),
                    OutlinedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 18),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: SvgPicture.asset(
                          "assets/images/google.svg",
                          color: btnGreen,
                          width: 30,
                        )),
                    OutlinedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 18),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: SvgPicture.asset(
                          "assets/images/instagram.svg",
                          color: btnGreen,
                          width: 30,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
