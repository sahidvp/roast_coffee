import 'package:provider/provider.dart';
import 'package:roast_coffee/controllers/auth_provider.dart';
import 'package:roast_coffee/views/login_screen.dart/widgets/buil_login_onpress.dart';
import 'package:roast_coffee/views/login_screen.dart/widgets/login_button.dart';

Consumer<AuthProvider> reactiveLoginButton(
      {required buttonName,
      required formKey,
      required username,
      required password}) {
    return Consumer<AuthProvider>(builder: (context, authProvider, child) {
      return LoginButton(
        buttonname: buttonName,
        onPressed: () => loginOnpress(
          formKey,
          context,
          username,
          password,
        ),
        isLoading: authProvider.isLoading,
      );
    });
  }