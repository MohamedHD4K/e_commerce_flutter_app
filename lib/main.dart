import 'package:e_commerce_flutter_app/pages/cart.dart';
import 'package:e_commerce_flutter_app/pages/favorites.dart';
import 'package:e_commerce_flutter_app/pages/home.dart';
import 'package:e_commerce_flutter_app/pages/login.dart';
import 'package:e_commerce_flutter_app/pages/profile.dart';
import 'package:e_commerce_flutter_app/pages/signup.dart';
import 'package:e_commerce_flutter_app/pages/userUpdate.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/login': (context) => const Login(),
        '/signup': (context) => const Signup(),
        '/cart': (context) => const Cart(),
        '/update': (context) => const UserUpdate(),
        '/profile': (context) => const Profile(),
        '/favorites': (context) => const Favorites(),
      },
    );
  }
}
