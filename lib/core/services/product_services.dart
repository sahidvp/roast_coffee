import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ProductService {
  final String _productUrl =
      'https://mt.diodeinfosolutions.com/api/products'; // Replace with your actual API endpoint
  final FlutterSecureStorage _storage = FlutterSecureStorage();

  Future<List<dynamic>> getProducts() async {
    try {
      // Retrieve the token from secure storage
      String? token = await _storage.read(key: 'auth_token');
      print(token);

      if (token == null) {
        throw Exception('No authentication token found');
      }

      final response = await http.get(
        Uri.parse(_productUrl),
        headers: {
          'Authorization': token,
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        print(response.body);

        final List<dynamic> products = json.decode(response.body);
        return products;
      } else {
        throw Exception('Failed to load products: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to fetch products: $e');
    }
  }
}
