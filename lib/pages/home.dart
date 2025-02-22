import 'package:e_commerce_flutter_app/widgets/constants/colors.dart';
import 'package:e_commerce_flutter_app/widgets/shared/product.dart';
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
                Navigator.pushNamed(context, '/cart');
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              )),
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
                Navigator.pushNamed(context, '/profile');
              },
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Product(
                about: "The intutvie and intellegent WH-100M4 headphone more",
                title: "Macbook Air M2",
                price: 30,
                image: "assets/images/boy1.png",
              ),
              Product(
                about: "The intutvie and intellegent WH-100M4 headphone more",
                title: "Macbook Air M2",
                price: 30,
                image: "assets/images/1.png",
              ),
              Product(
                about: "The intutvie and intellegent WH-100M4 headphone more",
                title: "Macbook Air M2",
                price: 30,
                image: "assets/images/boy2.png",
              ),
              Product(
                about: "The intutvie and intellegent WH-100M4 headphone more",
                title: "Macbook Air M2",
                price: 30,
                image: "assets/images/boy2.png",
              ),
              Product(
                about: "The intutvie and intellegent WH-100M4 headphone more",
                title: "Macbook Air M2",
                price: 30,
                image: "assets/images/boy1.png",
              ),
              Product(
                about: "The intutvie and intellegent WH-100M4 headphone more",
                title: "Macbook Air M2",
                price: 30,
                image: "assets/images/girl3.png",
              ),
              Product(
                about: "The intutvie and intellegent WH-100M4 headphone more",
                title: "Macbook Air M2",
                price: 30,
                image: "assets/images/girl2.png",
              ),
              Product(
                about: "The intutvie and intellegent WH-100M4 headphone more",
                title: "Macbook Air M2",
                price: 30,
                image: "assets/images/1.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
