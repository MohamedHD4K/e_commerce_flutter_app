import 'package:e_commerce_flutter_app/widgets/constants/colors.dart';
import 'package:e_commerce_flutter_app/widgets/shared/customButton.dart';
import 'package:e_commerce_flutter_app/widgets/shared/customInput.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        title: Center(
          child: Text(
            "Sign up",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
            padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                      hint: "Enter your Password",
                      controller: _passwordController,
                      prefixIcon: Icon(Icons.password),
                    ),
                    TextButton(
                        onPressed: null,
                        child: Text("Forget your password?")),
                    CustomButton(
                      onPressed: _submitForm,
                      child: Text("Register", style: TextStyle(fontSize: 15)),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Don't have an account?"),
                          TextButton(
                              onPressed: () => Navigator.pushReplacementNamed(
                                  context, "/login"),
                              child: Text(
                                "Log in",
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
                                      borderRadius:
                                          BorderRadius.circular(50))),
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
                                      borderRadius:
                                          BorderRadius.circular(50))),
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
                                      borderRadius:
                                          BorderRadius.circular(50))),
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
                                      borderRadius:
                                          BorderRadius.circular(50))),
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
            ],
          ),
        ),
      ),
    );
  }
}
