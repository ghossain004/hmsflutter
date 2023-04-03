import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hmsflutter/main.dart';
import 'package:hmsflutter/screens/home_screen.dart';
import 'package:hmsflutter/widgets/appbar_top.dart';
import 'package:hmsflutter/widgets/navbar_roots.dart';

class DepartmentScreen extends StatelessWidget {
  // const DepartmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  icon: Icon(Icons.arrow_back)),
            ],
          ),
          body: Column(
            children: [
              Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text(
                      'Department Page',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
