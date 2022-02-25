import 'package:flutter/material.dart';
import 'package:my_project/profile_screen.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'constrainst.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  _LoginSignupState createState() => _LoginSignupState();
}

class _LoginSignupState extends State<UserHomeScreen> {
  var dataCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 9,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bc.jpg"), fit: BoxFit.fill),
              ),
            ),
          ),
          // main Container for login and Signup
          Positioned(
            top: 200,
            child: Container(
              height: 280,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5),
                  ]),
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      "Hello ! User",
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal),
                    ),
                  ),
                  SizedBox(height: 40),
                  TextField(
                    controller: dataCtrl,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        MaterialCommunityIcons.email_outline,
                        color: Palette.iconColor,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Palette.textColor1),
                        borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Palette.textColor1),
                        borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      ),
                      contentPadding: EdgeInsets.all(20),
                      hintText: "Enter 4 digit ie:1234",
                      hintStyle:
                          TextStyle(fontSize: 16, color: Palette.textColor1),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
          //Trick to add the submit button
          Positioned(
            top: 435,
            right: 0,
            left: 0,
            child: Center(
              child: Container(
                height: 90,
                width: 90,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.3),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1),
                      ),
                    ]),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.orange, Colors.red],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1),
                          ),
                        ]),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MaterialCommunityIcons {
  // ignore: non_constant_identifier_names
  static IconData? email_outline;
}
