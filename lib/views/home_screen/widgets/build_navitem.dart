import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roast_coffee/core/utils/colors.dart';

BottomNavigationBarItem buildNavItem({
  required String icon,
  required Widget activeIcon,
  required String label,
}) {
  return BottomNavigationBarItem(
    icon: Column(children: [
      SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(Appcolors.text, BlendMode.srcIn),
      ),
      const SizedBox(height: 4),
      Text(
        label,
        style: TextStyle(
          color: Appcolors.text,
          fontSize: 12,
        ),
      ),
    ]),
    activeIcon: Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        color: Appcolors.yellow,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(Appcolors.white, BlendMode.srcIn),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: Appcolors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    ),
    label: label,
  );
}
