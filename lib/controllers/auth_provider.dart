import 'package:flutter/material.dart';
import 'package:roast_coffee/common_widgets/success_snackbar.dart';
import 'package:roast_coffee/core/services/auth_servies.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  String? _token;
  bool _isLoading = false;

  String? get token => _token;
  bool get isLoading => _isLoading;

  Future<bool> login(String username, String password) async {
  
    try {
      _isLoading = true; // Set loading to true
      notifyListeners();
      _token = await _authService.login(username, password);
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    } finally {
      _isLoading = !_isLoading; // Set loading to true
      notifyListeners();
    }
  }
}
