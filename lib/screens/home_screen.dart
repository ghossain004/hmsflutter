import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hmsflutter/screens/department_screen.dart';
import 'package:hmsflutter/screens/doctor_list.dart';
import 'package:hmsflutter/screens/profile_screen.dart';
import 'package:hmsflutter/widgets/appbar_top.dart';
import 'package:hmsflutter/widgets/navbar_roots.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // const HomeScreen({Key? key}) : super(key: key);
  mySnakeBar(message, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  int _selectedIndex = 0;

  final _screens = [
    HomeScreen(),
    Container(),
    Container(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // debugShowCheckedModeBanner: false,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Hospital"),
          titleSpacing: 10,
          toolbarHeight: 60,
          elevation: 5,
          backgroundColor: Colors.green,
          actions: [
            IconButton(
              onPressed: () {
                // mySnakeBar("Click Search Icon", context);
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
                onPressed: () {
                  // mySnakeBar("Click Logout Icon", context);
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
                          builder: (context) => DepartmentScreen()));
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
        ),
        bottomNavigationBar: Container(
          height: 80,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.deepPurple,
            unselectedItemColor: Colors.black,
            selectedLabelStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.chat_bubble_text_fill),
                  label: "Message"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: "Schedule"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings")
            ],
          ),
        ),
      ),
    );
  }
}
