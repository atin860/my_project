import 'package:flutter/material.dart';
import 'package:my_project/otp.dart';
import 'package:my_project/profile_screen.dart';
import 'package:my_project/user_home_screen.dart';

import 'new.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF59c16),
        primarySwatch: Colors.blue,
      ),
      home: UserHomeScreen(),
    );
  }
}
