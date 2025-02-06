import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roast_coffee/controllers/product_provider.dart';
import 'package:roast_coffee/views/home_screen/widgets/bottom_nav_bar.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, productProvider, child) => Scaffold(
          body: productProvider.pages[productProvider.selectedIndex],
          bottomNavigationBar: BottomNavBar(productProvider: productProvider)),
    );
  }
}
