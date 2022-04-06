import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
            icon: Icons.folder,
            text: "My Files",
            onTap: () => print("My Files"),
          ),
          _drawerItem(
            icon: Icons.group,
            text: "Shared With Me",
            onTap: () => print("Shared With Me"),
          ),
          _drawerItem(
            icon: Icons.access_time,
            text: "Recent",
            onTap: () => print("Recent"),
          ),
          _drawerItem(
            icon: Icons.delete,
            text: "Delete",
            onTap: () => print("Delete"),
          ),
          Divider(
            height: 25,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
            child: Text(
              "Label",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          _drawerItem(
            icon: Icons.bookmark,
            text: "Bookmark",
            onTap: () => print("Tap To Family Menu"),
          )
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
          image: AssetImage('assets/images/akebi_1.jpg'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(
            image: AssetImage('assets/images/akebi_2.jpg'), fit: BoxFit.cover),
      ),
      ClipOval(
        child: Image(
            image: AssetImage('assets/images/akebi_3.jpg'), fit: BoxFit.cover),
      )
    ],
    accountName: Text('Taufik Hidayat'),
    accountEmail: Text('akuutauf@flutter.com'),
  );
}

Widget _drawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
