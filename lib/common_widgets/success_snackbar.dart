import 'package:flutter/material.dart';
import 'package:roast_coffee/core/utils/colors.dart';

succesSnackbar(context) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        "Logged in successfully",
      ),
      backgroundColor: Appcolors.success));
}
