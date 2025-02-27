import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      // UserAccountsDrawerHeader(
      //   accountName: Text("mohammed"),
      //   accountEmail: Text("mohaemed455dwr@gmail.com"),
      //   currentAccountPicture: CircleAvatar(
      //     backgroundImage: AssetImage("assets/images/avatar.png"),
      //     radius: 30,
      //   ),
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //         image: AssetImage("assets/images/backgorund.png"),
      //         fit: BoxFit.cover),
      //   ),
      // ),
      Stack(children: [
        Container(
          child: Image.asset(
            "assets/images/backgorund.png",
            fit: BoxFit.cover,
            height: 200,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                  colors: [
                    const Color.fromARGB(36, 56, 56, 56),
                    const Color.fromARGB(92, 32, 32, 32)
                  ]),
            ),
            child: Row(
              spacing: 10,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/avatar.png"),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 210,
                      child: Text(
                        "mohamed455dwrmohamed455dwr@gmail.com",
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
      ListTile(
        title: Text("Notifications"),
        leading: Icon(Icons.notifications_outlined),
        onTap: null,
      ),
      ListTile(
        title: Text("Settings"),
        leading: Icon(Icons.settings_outlined),
        onTap: null,
      ),
      ListTile(
        title: Text("My Profucts"),
        leading: Icon(Icons.shopping_bag_outlined),
        onTap: null,
      ),
      ListTile(
        title: Text("Log out"),
        leading: Icon(Icons.logout_outlined),
        onTap: null,
      ),
    ]));
  }
}
