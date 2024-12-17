import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UiHelper {
  // static CustomTextField({required TextEditingController controller})

  static CustomImage({required String url}) {
    return Image.asset("assets/images/$url");
  }

  static CustomText(
      {required String text,
      Color? color,
      String? fontfamily,
      FontWeight? fontWeight,
      double? fontsize}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize ?? 12,
          color: color ?? Color(0XFF0000000),
          fontFamily: fontfamily ?? "regular",
          fontWeight: fontWeight ?? FontWeight.normal),
    );
  }

  static CustomButton(
      {required VoidCallback callback,
      Color? textcolor,
      double? height,
      double? width,
      Color? buttoncolor,
      required String text}) {
    return SizedBox(
      height: height ?? 60,
      width: width ?? 325,
      child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: buttoncolor ?? Color(0XFF1F41BB)),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: "regular",
                color: textcolor ?? Color(0XFFFFFFFF)),
          )),
    );
  }

  static CustomTextfield({
    required TextEditingController controller,
    required String text,
    required bool toHide,
    required TextInputType textInputType,
  }) {
    return Container(
      height: 55,
      width: 330,
      decoration: BoxDecoration(
          color: Color(0XFFF1F4FF),
          // sborder: Border.all(color: Color(0XFF1F41BB)),
          borderRadius: BorderRadius.circular(7)),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          top: 5,
        ),
        child: TextField(
          keyboardType: textInputType,
          controller: controller,
          obscureText: toHide,
          decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(
                  color: Color.fromARGB(255, 155, 153, 153),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
              border: InputBorder.none),
        ),
      ),
    );
  }

  static customTextButton(
      {required VoidCallback callback,
      required String text,
      required double fontsize,
      Color? color}) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              fontSize: fontsize,
              fontWeight: FontWeight.bold,
              fontFamily: "bold",
              color: color ?? Color(0XFF000000)),
        ));
  }

  static customSnakBar({required String text})

}
