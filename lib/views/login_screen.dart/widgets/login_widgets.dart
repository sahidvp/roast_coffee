import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roast_coffee/core/utils/colors.dart';
import 'package:roast_coffee/core/utils/image_path.dart';

RichText signUpText() {
    return RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: Appcolors.black)),
              TextSpan(
                  text: "Sign up", style: TextStyle(color: Appcolors.white))
            ]));
  }

  Align forgotPasswordText(double sh, double sw) {
    return Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                    top: sh * 0.01, bottom: sh * 0.02, right: sw * 0.03),
                child: Text(
                  "Forgot password?",
                  style:
                      TextStyle(color: Appcolors.white, fontSize: sh * 0.018),
                ),
              ),
            );
  }

  Text credentialText(double sw) {
    return Text(
      "Enter your credential here",
      style: TextStyle(color: Appcolors.black, fontSize: sw * 0.035),
    );
  }

  Text welcomText(double sw) {
    return Text("Welcome Back!",
        style: TextStyle(fontSize: sw * 0.08, color: Appcolors.white));
  }

  SizedBox loginImage(double sh) {
    return SizedBox(
      width: double.infinity,
      child: SvgPicture.asset(
        fit: BoxFit.fill,
        ImagePath.backgroundImg,
        height: sh * 0.25, // Control the image height
      ),
    );
  }