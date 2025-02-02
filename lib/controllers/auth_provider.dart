import 'package:flutter/material.dart';
import 'package:roast_coffee/core/services/auth_servies.dart';


class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  String? _token;

  String? get token => _token;

  Future<bool> login(String username, String password) async {
    try {
      _token = await _authService.login(username, password);
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }
}
