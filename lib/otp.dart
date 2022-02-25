import 'package:flutter/material.dart';
import 'package:my_project/profile_screen.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'constrainst.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _LoginSignupState createState() => _LoginSignupState();
}

class _LoginSignupState extends State<OtpScreen> {
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
                    image: AssetImage("assets/bc.jpg"), fit: BoxFit.fill),
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
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      "Verification",
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal),
                    ),
                  ),
                  SizedBox(height: 40),
                  OTPTextField(
                    length: 6,
                    //width: MediaQuery.of(context).size.width,
                    fieldWidth: 40,
                    style: TextStyle(fontSize: 17),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.box,
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(top: 20),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "By pressing 'Submit' you agree\n to our ",
                          style: TextStyle(color: Palette.textColor2),
                          children: [
                            TextSpan(
                              // recognizer: ,
                              text: "term & conditions",
                              style: TextStyle(color: Colors.orange),
                            )
                          ]),
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
