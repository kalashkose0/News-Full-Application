import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app_full/repository/signup/signUpScreen.dart';
import 'package:new_app_full/widgets/uihelper.dart';

class loginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
                text: "Login here",
                color: Color(0XFF1F41BB),
                fontsize: 30,
                fontWeight: FontWeight.w700),
            const SizedBox(
              height: 5,
            ),
            UiHelper.CustomText(
                text: "Welcome back you've",
                // color: Color(0XFF1F41BB),
                fontsize: 20,
                fontWeight: FontWeight.w700),
            UiHelper.CustomText(
                text: "been missed!",
                // color: Color(0XFF1F41BB),
                fontsize: 20,
                fontWeight: FontWeight.w700),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomTextfield(
                controller: emailController,
                text: "Email",
                toHide: false,
                textInputType: TextInputType.emailAddress),
            SizedBox(
              height: 16,
            ),
            UiHelper.CustomTextfield(
                controller: passwordController,
                text: "Password",
                toHide: true,
                textInputType: TextInputType.text),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 180,
                  ),
                  UiHelper.customTextButton(
                      callback: () {},
                      text: "forgot your password?",
                      color: Color(0XFF1F41BB),
                      fontsize: 13)
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            UiHelper.CustomButton(
                callback: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => signUpScreen()));
                },
                text: "Sign In")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => signUpScreen()),
          );
        },
        label: Text(
          "Create new account",
          style: TextStyle(
              fontSize: 15,
              color: Color(0XFF000000),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
