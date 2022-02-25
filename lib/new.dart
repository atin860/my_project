import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_project/otp.dart';
import 'constrainst.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({Key? key}) : super(key: key);

  @override
  _LoginSignupState createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  get mobileCTRL => null;
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
                    image: AssetImage("assets/bd.jpg"), fit: BoxFit.fill),
              ),
            ),
          ),
          // main Container for login and Signup
          Positioned(
            top: 200,
            child: Container(
              height: 380,
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
              child: Column(
                children: [
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: "Welcome to",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.yellow[700],
                                ),
                                children: [
                                  TextSpan(
                                    text: " Bala ji Repo,",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.yellow[700],
                                    ),
                                  )
                                ]),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 65),
                            child: Text(
                              "Signin to Continue",
                              style: TextStyle(
                                  letterSpacing: 1, color: Colors.blueGrey),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    // padding: EdgeInsets.only(),
                    child: Column(
                      children: [
                        TextField(
                          controller: mobileCTRL,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              MaterialCommunityIcons.email_outline,
                              color: Palette.iconColor,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Palette.textColor1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Palette.textColor1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0)),
                            ),
                            prefix: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1),
                              child: Text(
                                "(+91)",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            contentPadding: EdgeInsets.all(20),
                            hintText: "Enter Mobile Number",
                            hintStyle: TextStyle(
                                fontSize: 14, color: Palette.textColor1),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(top: 20),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: "By pressing 'Submit' you agree to our ",
                                style: TextStyle(color: Palette.textColor2),
                                children: [
                                  TextSpan(
                                    // recognizer: ,
                                    text: "term & conditions",
                                    style: TextStyle(color: Colors.orange),
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          //Trick to add the submit button
          Positioned(
            top: 535,
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
                        MaterialPageRoute(builder: (context) => OtpScreen()));
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
