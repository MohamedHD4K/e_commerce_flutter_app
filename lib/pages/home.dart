import 'package:e_commerce_flutter_app/widgets/constants/colors.dart';
import 'package:e_commerce_flutter_app/widgets/shared/button.dart';
import 'package:e_commerce_flutter_app/widgets/shared/input.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return StatefulHome();
  }
}

class StatefulHome extends StatefulWidget {
  const StatefulHome({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<StatefulHome> {

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
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              icon: Icon(
                Icons.login,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(),
        ),
      ),
    );
  }
}
