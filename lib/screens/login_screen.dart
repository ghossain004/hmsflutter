import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hmsflutter/screens/home_screen.dart';
import 'package:hmsflutter/screens/signup_screen.dart';
import 'package:hmsflutter/screens/welcome_screen.dart';
import 'package:hmsflutter/widgets/navbar_roots.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // const LoginScreen({Key? key}) : super(key: key);
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Material(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WelcomeScreen()));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back),
                      Text(
                        'Back',
                        style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset("images/doctors.png"),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Enter Username"),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    obscureText: passToggle ? true : false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Enter Username"),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: () {
                          if (passToggle == true) {
                            passToggle = false;
                          } else {
                            passToggle = true;
                          }
                          setState(() {});
                        },
                        child: passToggle
                            ? Icon(CupertinoIcons.eye_slash_fill)
                            : Icon(CupertinoIcons.eye_fill),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Material(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavBarRoots()));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
