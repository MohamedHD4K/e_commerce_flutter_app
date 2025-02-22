import 'package:e_commerce_flutter_app/data/data.dart';
import 'package:e_commerce_flutter_app/widgets/constants/colors.dart';
import 'package:e_commerce_flutter_app/widgets/customs/myDropDown.dart';
import 'package:e_commerce_flutter_app/widgets/shared/showButton.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateProfile();
  }
}

class StateProfile extends StatefulWidget {
  const StateProfile(
      {Key? key,
      this.username = "Username",
      this.email = "mohamed455dwr@gmail.com",
      this.birthday = "2004/10/16",
      this.isMyProfile = true})
      : super(key: key);

  final String username;
  final String email;
  final String birthday;
  final bool isMyProfile;

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<StateProfile> {
  String? selectedValue; // Selected item
  List<String> items = ['Apple', 'Banana', 'Cherry', 'Mango', 'Orange'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarGreen,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/images/avatar.png"),
            ),
            Text(
              widget.username,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
            Text(
              widget.isMyProfile ? widget.email : widget.birthday,
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                spacing: 10,
                children: [
                  MyDropdown(
                      text: "Personal Data",
                      icon: Icons.person,
                      items: personalData),
                  MyDropdown(
                      text: "Notifications",
                      icon: Icons.notifications,
                      items: notifications),
                  ShowButton(
                      text: "Update user data",
                      icon: Icons.edit,
                      onPressed: () =>
                          Navigator.pushNamed(context, "/favorites")),
                  ShowButton(
                      text: "Favorites",
                      icon: Icons.favorite,
                      onPressed: () => Navigator.pushNamed(context, "/update"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
