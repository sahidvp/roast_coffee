import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:roast_coffee/core/services/product_services.dart';
import 'package:roast_coffee/models/product_model.dart';
import 'package:roast_coffee/views/home_screen/home_screen.dart';

class ProductProvider with ChangeNotifier {
  final List<Widget> _pages = [
    HomeScreen(),
    Text("order"),
    Text("Favourite"),
    Text("reward"),
    Text("profile"),
    
  ];
  List<ProductModel> _products = [];
  bool _isLoading = false;
  int selectedIndex = 0;

  List<ProductModel> get products => _products;
  List<Widget> get pages => _pages;
  bool get isLoading => _isLoading;

  final ProductService _productService = ProductService();

  void onTapBar(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  Future<void> fetchProducts() async {
    _isLoading = true;
    notifyListeners();

    try {
      // Fetch products from the API
      _products = await _productService.getProducts();

      // Save products to Hive
      final productsBox = Hive.box<ProductModel>('productsBox');
      await productsBox.clear(); // Clear old data
      // for (var product in _products) {
      //   await productsBox.add(product); // Add each product to Hive
      // }
    } catch (e) {
      

      // Load products from Hive if API fails
      // final productsBox = Hive.box<ProductModel>('productsBox');
      // _products = productsBox.values.toList();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
