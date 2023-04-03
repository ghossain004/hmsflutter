import 'package:flutter/material.dart';
import 'package:hmsflutter/main.dart';

class AppBarWidget extends StatefulWidget {
  // const AppBarWidget({Key? key, required Column child}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Hospital"),
          titleSpacing: 10,
          //  centerTitle: true,
          toolbarHeight: 60,
          elevation: 5,
          backgroundColor: Colors.green,
          actions: [
            IconButton(
                onPressed: () {
                  mySnakeBar("Click Search Icon", context);
                },
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  mySnakeBar("Click Logout Icon", context);
                },
                icon: Icon(Icons.logout)),
          ],
        ),
      );
    }
  }
}
