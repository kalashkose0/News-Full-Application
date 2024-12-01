import 'package:flutter/material.dart';
import 'package:new_app_full/repository/Screens/onboardingScreen.dart';
import 'package:new_app_full/repository/login/loginScreen.dart';
import 'package:new_app_full/repository/signup/signUpScreen.dart';
import 'package:new_app_full/repository/splash/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        fontFamily: "regular",
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF1F41BB)),
        useMaterial3: false,
      ),
      home: OnBoardingScreen(),
      // home: loginScreen(),
      // home: signUpScreen(),
      // home: splashScreen(),
    );
  }
}
