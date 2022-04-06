import 'package:flutter/material.dart';
import 'drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Scaffold(
          appBar: AppBar(
            title: Text("Belajar Drawer Sidebar"),
          ),
          drawer: DrawerWidget(),
          // endDrawer: DrawerWidget(),
          body: Center(
              child: Text('Belajar Navigation Drawer di Flutter',
                  style: TextStyle(fontSize: 20))),
        ),
      ),
    );
  }
}
