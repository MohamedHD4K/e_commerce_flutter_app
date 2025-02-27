import 'package:e_commerce_flutter_app/widgets/shared/footer.dart';
import 'package:e_commerce_flutter_app/widgets/shared/inCartProduct.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Center(
          child: Text(
            "Favorites",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      bottomNavigationBar: Footer(),
      body: Column(
        children: [
          InCartProduct(
            description: "The intutvie and Macbook aa M2",
            title: "Macbook aa M2 Macbook aa M2",
            image: "assets/images/1.png",
            price: 10,
          ),
          InCartProduct(
            description: "The 123 and",
            title: "Macbook Air M2",
            image: "assets/images/boy1.png",
            price: 30,
          ),
          InCartProduct(
            description: "The dasd and",
            title: "Macbook Air M2",
            image: "assets/images/girl1.png",
            price: 20,
          ),
        ],
      ),
    );
  }
}
