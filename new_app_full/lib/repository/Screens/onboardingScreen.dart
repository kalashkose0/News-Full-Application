import 'package:flutter/material.dart';
import 'package:new_app_full/repository/login/loginScreen.dart';
import 'package:new_app_full/widgets/uihelper.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(url: "welcome image.png"),
            SizedBox(
              height: 10,
            ),
            UiHelper.CustomText(
                text: "Discover Your",
                color: Color(0XFF1F41BB),
                fontsize: 25,
                fontWeight: FontWeight.bold),
            UiHelper.CustomText(
                text: "Dream Job Here",
                color: Color(0XFF1F41BB),
                fontsize: 25,
                fontWeight: FontWeight.bold),
            SizedBox(height: 10),
            UiHelper.CustomText(
              text: "Explain all the existing job roles based on your",
              // color: Color(0XFF1F41BB),
              fontsize: 12,
              // fontWeight: FontWeight.bold
            ),
            UiHelper.CustomText(
              text: "interest and study major",
              // color: Color(0XFF1F41BB),
              fontsize: 12,
              // fontWeight: FontWeight.bold
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                UiHelper.CustomButton(
                  callback: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => loginScreen()));
                  },
                  text: "Get Started",
                ),
              ],
            )
          ],
        ),
      ),
      
    );
  }
}
