import 'package:flutter/material.dart';
import 'package:roast_coffee/core/utils/colors.dart';
import 'package:roast_coffee/core/utils/image_path.dart';
import 'package:roast_coffee/views/home_screen/widgets/build_navitem.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10,
      backgroundColor: Appcolors.white,
      currentIndex: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,

      type: BottomNavigationBarType.fixed, // Ensure all items are visible
      selectedItemColor: Appcolors.white, // Color for the selected item
      unselectedItemColor: Appcolors.text, // Color for unselected items
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
