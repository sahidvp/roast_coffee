import 'package:flutter/material.dart';
import 'package:roast_coffee/core/utils/app_icons.dart';
import 'package:roast_coffee/core/utils/colors.dart';

Padding buildMainText(double sw) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: sw * .05),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            "What are you craving\ntoday? ",
            style: TextStyle(fontSize: 19, color: Appcolors.white),
          ),
        ),
        Icon(
          AppIcons.settings,
          color: Appcolors.white,
          size: 20,
        )
      ]),
    );
  }