import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_app_full/repository/Screens/onboardingScreen.dart';
import 'package:new_app_full/repository/login/loginScreen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.newspaper,
          color: Color(0XFF1F41BB),
          size: 60,
        ),
      ),
    );
  }
}
