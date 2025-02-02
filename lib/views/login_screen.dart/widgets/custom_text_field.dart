// import 'package:flutter/material.dart';
// import 'package:roast_coffee/core/utils/app_icons.dart';
// import 'package:roast_coffee/core/utils/colors.dart';

// class CustomTextField extends StatelessWidget {
//   const CustomTextField(
//       {super.key, required this.sw, required this.isPassword});

//   final double sw;
//   final bool isPassword;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: sw * .03),
//       child: TextFormField(
//         obscureText: isPassword,
//         decoration: InputDecoration(
//           prefixIcon: Icon(isPassword ? AppIcons.password : AppIcons.userName),
//           hintText: isPassword ? "Password" : "Username",
//           filled: true,
//           fillColor: Appcolors.white,
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(sw * .03),
//               borderSide: BorderSide(color: Appcolors.primary, width: 2)),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(sw * .03),
//             borderSide: BorderSide(color: Appcolors.black, width: 2),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:roast_coffee/core/utils/app_icons.dart';
import 'package:roast_coffee/core/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.sw,
      required this.isPassword,
      required this.controller,
      required this.hintText});

  final double sw;
  final bool isPassword;
  final String hintText;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: sw * .03),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your $hintText';
          }
          return null;
        }, // Add the validator function here
        decoration: InputDecoration(
          prefixIcon: Icon(isPassword ? AppIcons.password : AppIcons.userName),
          hintText: isPassword ? "Password" : "Username",
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
    );
  }
}
