import 'package:flutter/material.dart';
import 'package:roast_coffee/core/utils/colors.dart';
import 'package:roast_coffee/core/utils/media_query_util.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {super.key,
      required this.buttonname,
      required this.onPressed,
      required this.isLoading});

  final String buttonname;
  final VoidCallback onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQueryUtil.screenWidth(context);
    final screenHeight = MediaQueryUtil.screenHeight(context);

    final buttonwidth = screenWidth * 0.6;
    final buttonheight = screenHeight * 0.07;

    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: buttonheight,
        width: buttonwidth,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              backgroundColor: Appcolors.primary),
          child: isLoading
              ? CircularProgressIndicator()
              : Text(
                  buttonname,
                  style: TextStyle(
                      color: Appcolors.white, fontWeight: FontWeight.w700),
                ),
        ),
      ),
    );
  }
}
