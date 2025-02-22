import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {
  const MyDropdown({Key? key, required this.text, required this.icon , required this.items})
      : super(key: key);

  final IconData icon;
  final String text;
  final List items;

  @override
  _MyDropDownState createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropdown> {
  late bool _isOpen = false;

  void _openDropdown() {
    setState(() {
      _isOpen = !_isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.blueGrey[50],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 8,
                children: [
                  Icon(
                    widget.icon,
                    size: 24,
                  ),
                  Text(
                    widget.text,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              IconButton(
                  onPressed: _openDropdown,
                  icon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 24,
                    color: Colors.grey[700],
                  ))
            ],
          ),
        ),
        _isOpen ? Container(
            padding: EdgeInsets.all(10),
            child: Column(
              spacing: 10,
              children: widget.items.map((item) {
                return Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        item["title"] ?? "",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        item["value"] ?? "",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                );
              }).toList(),
            )
            ): SizedBox(),
      ],
    );
  }
}
