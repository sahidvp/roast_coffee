import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final String _url = 'https://mt.diodeinfosolutions.com/api/login';
  final FlutterSecureStorage _storage = FlutterSecureStorage();

  Future<String> login(String username, String password) async {
    try {
      final response = await http.post(
        Uri.parse(_url),
        body: {
          'username': username,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        String token = data['auth_token'];

        await _storage.write(key: 'auth_token', value: token);
        return token;
      } else {
        throw Exception('Failed to login');
      }
    } catch (e) {
      throw Exception('Failed to login: $e');
    }
  }
}
