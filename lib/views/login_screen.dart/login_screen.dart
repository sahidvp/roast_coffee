import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roast_coffee/controllers/auth_provider.dart';
import 'package:roast_coffee/core/utils/colors.dart';
import 'package:roast_coffee/core/utils/media_query_util.dart';
import 'package:roast_coffee/views/login_screen.dart/widgets/buil_login_onpress.dart';
import 'package:roast_coffee/views/login_screen.dart/widgets/custom_text_field.dart';
import 'package:roast_coffee/views/login_screen.dart/widgets/login_button.dart';
import 'package:roast_coffee/views/login_screen.dart/widgets/login_widgets.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final sh = MediaQueryUtil.screenHeight(context);
    final sw = MediaQueryUtil.screenWidth(context);

    return Scaffold(
      backgroundColor: Appcolors.primary2,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: sh * 0.02),
                loginImage(sh),
                SizedBox(height: sh * 0.01),
                welcomText(sw),
                SizedBox(height: sh * 0.005),
                credentialText(sw),
                SizedBox(height: sh * 0.04),
                Column(
                  children: [
                    CustomTextField(
                      sw: sw,
                      isPassword: false,
                      hintText: "Username",
                      controller: usernameController,
                    ),
                    SizedBox(height: sh * 0.02),
                    CustomTextField(
                      sw: sw,
                      isPassword: true,
                      hintText: "Password",
                      controller: passwordController,
                    ),
                  ],
                ),
                forgotPasswordText(sh, sw),
                SizedBox(height: sh * 0.02),
                LoginButton(
                  buttonname: "Login",
                  onPressed: () => loginOnpress(_formKey, context,
                      usernameController.text, passwordController.text),
                ),
                SizedBox(height: sh * 0.03),
                signUpText(),
                SizedBox(height: sh * 0.02),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

