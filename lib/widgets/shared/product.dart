import 'package:e_commerce_flutter_app/widgets/constants/colors.dart';
import 'package:e_commerce_flutter_app/widgets/customs/myButton.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product(
      {Key? key,
      required this.description,
      required this.image,
      required this.price,
      required this.title})
      : super(key: key);

  final String image;
  final String title;
  final String description;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
          border: Border.all(color: containerBorder),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0)),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: 200,
                  height: 180,
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: MyButton(
                    backgroundColor: Colors.pink,
                    borderColor: Colors.white,
                    height: 25,
                    width: 25,
                    borderRadius: 50,
                    padding: EdgeInsets.only(top: 1),
                    child: Icon(
                      Icons.favorite_outline_outlined,
                      color: Colors.white,
                      size: 14,
                    )),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$$price",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    MyButton(
                        backgroundColor: btnGreen,
                        borderColor: Colors.transparent,
                        height: 40,
                        width: 40,
                        borderRadius: 50,
                        padding: EdgeInsets.only(top: 1),
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                          size: 20,
                        ))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
