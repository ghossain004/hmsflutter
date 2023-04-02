import 'package:flutter/material.dart';
import 'package:hmsflutter/main.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key, required Column child}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        appBar: AppBar(
          title: Text("Hospital"),
          titleSpacing: 10,
          //  centerTitle: true,
          toolbarHeight: 60,
          elevation: 5,
          backgroundColor: Colors.green,
          actions: [
            IconButton(
                onPressed: () {
                  mySnakeBar("Click Comment Icon", context);
                },
                icon: Icon(Icons.comment)),
            IconButton(
                onPressed: () {
                  mySnakeBar("Click Search Icon", context);
                },
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  mySnakeBar("Click Setting Icon", context);
                },
                icon: Icon(Icons.settings)),
            IconButton(
                onPressed: () {
                  mySnakeBar("Click Email Icon", context);
                },
                icon: Icon(Icons.email)),
          ],
        ),
      );
    }
  }
}
