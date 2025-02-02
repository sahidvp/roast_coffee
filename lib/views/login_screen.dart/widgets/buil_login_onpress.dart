import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roast_coffee/controllers/auth_provider.dart';
import 'package:roast_coffee/core/utils/colors.dart';

loginOnpress(formKey, context, usernameController, passwordController) async {
  if (formKey.currentState!.validate()) {
    bool success = await Provider.of<AuthProvider>(context, listen: false)
        .login(usernameController, passwordController);

    if (success) {
      Navigator.pushReplacementNamed(context, "/home");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "Logged in successfully",
        ),
        backgroundColor: const Color.fromARGB(255, 25, 197, 114),
      ));
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "Login failed incorrect details",
        ),
        backgroundColor: Appcolors.error,
      ));
    }
  }
}
