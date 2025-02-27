import 'package:e_commerce_flutter_app/data/data.dart';
import 'package:e_commerce_flutter_app/widgets/constants/colors.dart';
import 'package:e_commerce_flutter_app/widgets/shared/footer.dart';
import 'package:e_commerce_flutter_app/widgets/shared/sideBar.dart';
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
  final inCart = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(
        title: Center(
          child: Text(
            "Home",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 25,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: appBarGreen,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: Text(
                    "$inCart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Footer(),
      body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: (products).map((product) {
                    return Product(
                      description: product["description"] ?? "",
                      title: product["title"] ?? "",
                      price: product["price"] ?? "",
                      image: product["image"] ?? "",
                    );
                  }).toList(),
                ),
              ))),
    );
  }
}