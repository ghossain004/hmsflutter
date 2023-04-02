import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hmsflutter/main.dart';
import 'package:hmsflutter/screens/home_screen.dart';
import 'package:hmsflutter/screens/profile_screen.dart';

class NavBarRoots extends StatefulWidget {
  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  // const NavBarRoots({Key? key}) : super(key: key);
  int _selectedIndex = 0;

  final _screens = [
    HomeScreen(),
    Container(),
    Container(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                    padding: EdgeInsets.all(0),
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      accountName: Text("Enamul"),
                      accountEmail: Text("tusarjobs@gmail.com"),
                      currentAccountPicture: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3M_dvsRn8JmtNC8O4zKs4aRNPepiglDJgwB396MmDSbZwr5h1O7JZ2M_dn6sWpeG843c&usqp=CAU"),
                    )),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () {
                    mySnakeBar("Click Home Icon", context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.contact_mail),
                  title: Text("Contact"),
                  onTap: () {
                    mySnakeBar("Click Contact Icon", context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email"),
                  onTap: () {
                    mySnakeBar("Click Email Icon", context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone"),
                  onTap: () {
                    mySnakeBar("Click Phone Icon", context);
                  },
                )
              ],
            ),
          ),
          endDrawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                    padding: EdgeInsets.all(0),
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      accountName: Text("Enamul"),
                      accountEmail: Text("tusarjobs@gmail.com"),
                      currentAccountPicture: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3M_dvsRn8JmtNC8O4zKs4aRNPepiglDJgwB396MmDSbZwr5h1O7JZ2M_dn6sWpeG843c&usqp=CAU"),
                    )),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () {
                    mySnakeBar("Click Home Icon", context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.contact_mail),
                  title: Text("Contact"),
                  onTap: () {
                    mySnakeBar("Click Contact Icon", context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                  onTap: () {
                    mySnakeBar("Click Profile Icon", context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email"),
                  onTap: () {
                    mySnakeBar("Click Email Icon", context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone"),
                  onTap: () {
                    mySnakeBar("Click Phone Icon", context);
                  },
                )
              ],
            ),
          ),
          backgroundColor: Colors.white,
          body: _screens[_selectedIndex],
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
      ),
    );
  }
}
