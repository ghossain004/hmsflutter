import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hmsflutter/screens/appointment_screen.dart';
import 'package:hmsflutter/screens/login_screen.dart';
import 'package:hmsflutter/widgets/navbar_roots.dart';
import 'package:hmsflutter/screens/signup_screen.dart';
import 'package:hmsflutter/screens/skip.dart';

class WelcomeScreen extends StatelessWidget {
  // const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Material(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AppointmentScreen()));
                    },
                    child: Text(
                      'Appointment',
                      style: TextStyle(
                          color: Colors.deepPurpleAccent, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset("images/doctors.png"),
                ),
                SizedBox(height: 50),
                Text(
                  "Doctors Appointment",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      wordSpacing: 2),
                ),
                SizedBox(height: 10),
                Text(
                  "Appoint your Doctor",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      wordSpacing: 2),
                ),
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
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
                    Material(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupScreen()));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
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
