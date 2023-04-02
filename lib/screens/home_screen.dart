import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hmsflutter/screens/doctor_list.dart';
import 'package:hmsflutter/widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  mySnakeBar(message, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Hospital"),
            // titleSpacing: 10,
            //  centerTitle: true,
            toolbarHeight: 60,
            elevation: 5,
            backgroundColor: Colors.deepPurple[900],
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
              IconButton(
                  onPressed: () {
                    mySnakeBar("Click Logout Icon", context);
                  },
                  icon: Icon(Icons.logout)),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.all(20.0),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[800]),
                    child: Center(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Doctor's List",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorListScreen()));
                  }),
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[800]),
                    child: Center(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Departments",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorListScreen()));
                  }),
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[800]),
                    child: Center(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Appointment Status",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorListScreen()));
                  }),
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[800]),
                    child: Center(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Lab Reports",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorListScreen()));
                  }),
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[800]),
                    child: Center(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Prescription",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorListScreen()));
                  }),
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[800]),
                    child: Center(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Payment Details",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorListScreen()));
                  }),
                ),
              ],
            ),
          )),
    );
  }
}
