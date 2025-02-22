import 'package:e_commerce_flutter_app/widgets/constants/colors.dart';
import 'package:flutter/material.dart';

class InCartProduct extends StatefulWidget {
  const InCartProduct(
      {Key? key,
      required this.description,
      required this.title,
      required this.image,
      this.price = 0})
      : super(key: key);

  final String title;
  final String description;
  final String image;
  final int price;

  @override
  _InCartProductState createState() => _InCartProductState();
}

class _InCartProductState extends State<InCartProduct> {
  late int _inCart = 0;

  void _increment() {
    setState(() {
      _inCart++;
    });
  }

  void _decrement() {
    if (_inCart <= 0) _inCart = 1;
    setState(() {
      _inCart--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 98,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: containerBorder),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                widget.image,
                width: 100,
                height: 95,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    widget.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    widget.description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: OutlinedButton(
                            onPressed: _decrement,
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                            ),
                            child: Icon(Icons.remove, size: 15)),
                      ),
                      Text(
                        "$_inCart",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: OutlinedButton(
                            onPressed: _increment,
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              backgroundColor: btnGreen,
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            )),
                      ),
                    ],
                    spacing: 5,
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete_outline_rounded,
                      color: Colors.grey,
                      size: 24,
                    )),
                Text(
                  "\$" + widget.price.toString(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            )
          ],
        ),
      ),
    );
  }
}
