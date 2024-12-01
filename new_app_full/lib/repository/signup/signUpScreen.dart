import 'package:flutter/material.dart';
import 'package:new_app_full/repository/login/loginScreen.dart';
import 'package:new_app_full/widgets/uihelper.dart';

class signUpScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
                text: "Create Account",
                color: Color(0XFF1F41BB),
                fontsize: 30,
                fontWeight: FontWeight.w700),
            const SizedBox(
              height: 10,
            ),
            UiHelper.CustomText(
                text: "Create an account so you can explore all the",
                // color: Color(0XFF1F41BB),
                fontsize: 12,
                fontWeight: FontWeight.w700),
            UiHelper.CustomText(
                text: "existing jobs",
                // color: Color(0XFF1F41BB),
                fontsize: 12,
                fontWeight: FontWeight.w700),
            SizedBox(
              height: 40,
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
              height: 16,
            ),
            UiHelper.CustomTextfield(
                controller: usernameController,
                text: "user name",
                toHide: true,
                textInputType: TextInputType.text),
            SizedBox(
              height: 30,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(right: 10),
            //   child: Row(
            //     children: [
            //       SizedBox(
            //         width: 180,
            //       ),
            //       UiHelper.customTextButton(
            //           callback: () {},
            //           text: "forgot your password?",
            //           color: Color(0XFF1F41BB),
            //           fontsize: 13)
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 15,
            // ),
            UiHelper.CustomButton(callback: () {}, text: "Sign Up")
          ],
        ),
      ),
      floatingActionButton: UiHelper.customTextButton(
        callback: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => loginScreen()));
        },
        text: "Already have an account?",
        fontsize: 15,
        color: Color(0XFF000000),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
