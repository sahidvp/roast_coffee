import 'package:flutter/material.dart';
import 'package:roast_coffee/core/utils/app_icons.dart';
import 'package:roast_coffee/core/utils/colors.dart';

Padding buildSearchField(double sw) {
  return Padding(
    padding: EdgeInsets.only(
        left: sw * .05, right: sw * .04, top: sw * .03, bottom: sw * .03),
    child: SizedBox(
      height: sw * .13,
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: Icon(
            AppIcons.searchFilter,
            color: Appcolors.primary2,
          ),
          hintText: "What are you looking for ?",
          hintStyle: TextStyle(color: Appcolors.text),
          filled: true,
          fillColor: Appcolors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(sw * .03),
            borderSide: BorderSide(color: Appcolors.primary, width: 2),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(sw * .03),
            borderSide: BorderSide(color: Appcolors.black, width: 2),
          ),
        ),
      ),
    ),
  );
}
