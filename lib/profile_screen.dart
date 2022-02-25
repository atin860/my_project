import 'package:flutter/material.dart';
import 'constrainst.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _LoginSignupState createState() => _LoginSignupState();
}

class _LoginSignupState extends State<Profile> {
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
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/road.jpg"), fit: BoxFit.fill),
              ),
            ),
          ),

          // maIN CONTAINER CONTROL
          Positioned(
            top: 170,
            child: Container(
              height: 500,
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
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(),
                          // padding: EdgeInsets.all(),
                          child: Center(
                            child: CircleAvatar(
                              radius: 73,
                              backgroundColor: Colors.teal,
                              child: CircleAvatar(
                                radius: 70,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.person_add_alt_1_rounded,
                                  size: 77,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Palette.textColor1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0)),
                            ),
                            contentPadding: EdgeInsets.all(20),
                            hintText: "Enter Your Name",
                            hintStyle: TextStyle(
                                fontSize: 14, color: Palette.textColor1),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Palette.textColor1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35.0)),
                            ),
                            contentPadding: EdgeInsets.all(20),
                            hintText: "Enter Your City",
                            hintStyle: TextStyle(
                                fontSize: 14, color: Palette.textColor1),
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                  ),
                ],
              ),
            ),
          ),
          //Trick to add the submit button
          Positioned(
            top: 630,
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
        ],
      ),
    );
  }
}

class MaterialCommunityIcons {
  // ignore: non_constant_identifier_names
  static IconData? email_outline;
}
