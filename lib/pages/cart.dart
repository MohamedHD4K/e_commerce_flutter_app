import 'package:e_commerce_flutter_app/widgets/shared/footer.dart';
import 'package:e_commerce_flutter_app/widgets/shared/inCartProduct.dart';
import 'package:e_commerce_flutter_app/data/data.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Cart",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      bottomNavigationBar: Footer(),
      body: SingleChildScrollView(
        child: Column(
          children: inCartProduct.map((product) {
            return InCartProduct(
                description: product["description"] ?? "",
                title: product["title"] ?? "",
                image: product["image"] ?? "",
                price: product["price"] ?? "");
          }).toList(),
        ),
      ),
    );
  }
}
