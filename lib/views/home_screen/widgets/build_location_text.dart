import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:roast_coffee/core/utils/colors.dart';

Padding buildLocation(double sw) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: sw * .05),
      child: Row(
        children: [
          Icon(
            IconsaxPlusLinear.gps,
            color: Appcolors.white,
            size: 15,
          ),
          Text(
            " 1920 Al Fateh Grand Mosque Road,Bahrain ",
            style: TextStyle(color: Appcolors.white, fontSize: 12),
          ),
          Icon(
            IconsaxPlusLinear.arrow_circle_down,
            color: Appcolors.white,
            size: 15,
          )
        ],
      ),
    );
  }