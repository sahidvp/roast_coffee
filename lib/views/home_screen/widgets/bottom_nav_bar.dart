import 'package:flutter/material.dart';
import 'package:roast_coffee/controllers/product_provider.dart';
import 'package:roast_coffee/core/utils/colors.dart';
import 'package:roast_coffee/core/utils/image_path.dart';
import 'package:roast_coffee/views/home_screen/widgets/build_navitem.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.productProvider});
  final ProductProvider productProvider;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) => productProvider.onTapBar(value),
      elevation: 10,
      backgroundColor: Appcolors.white,
      currentIndex: productProvider.selectedIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Appcolors.white,
      unselectedItemColor: Appcolors.text,
      items: [
        buildNavItem(
            icon: ImagePath.home, activeIcon: Container(), label: "Home"),
        buildNavItem(
            icon: ImagePath.order, activeIcon: Container(), label: "Order"),
        buildNavItem(
            icon: ImagePath.favourite,
            activeIcon: Container(),
            label: "Favorite"),
        buildNavItem(
            icon: ImagePath.rewards, activeIcon: Container(), label: "Rewards"),
        buildNavItem(
            icon: ImagePath.profile, activeIcon: Container(), label: "Profile")
      ],
    );
  }
}
