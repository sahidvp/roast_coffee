import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roast_coffee/core/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.pushReplacementNamed(context, "/login");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primary,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Center image (appears first)
          Center(
            child: Image.asset(
              "assets/images/imagesplash.png",
              fit: BoxFit.contain,
              height: 110,
            )
                .animate()
                .scale(
                  begin: const Offset(2.5, 2.5),
                  end: const Offset(1.0, 1.0),
                  duration: const Duration(milliseconds: 1000),
                )
                .fade(
                  begin: 0.1,
                  end: 1.0,
                  duration: const Duration(milliseconds: 800),
                ),
          ),

          // Top SVG (appears after delay)
          Positioned(
            top: 20,
            left: 360,
            child: SvgPicture.asset(
              "assets/images/Group.svg",
              height: 400,
              width: 300,
            )
                .animate()
                .fade(
                  begin: 0.0,
                  end: 1.0,
                  delay: const Duration(milliseconds: 1000),
                  duration: const Duration(milliseconds: 800),
                )
                .slideX(
                  begin: 0,
                  end: -1,
                  delay: const Duration(milliseconds: 1000),
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.easeOutQuad,
                )
                .rotate(
                  begin: -0.2,
                  end: 0,
                  delay: const Duration(milliseconds: 1000),
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.easeOutQuad,
                ),
          ),

          // Bottom SVG (appears after delay)
          Positioned(
            bottom: 0,
            left: 0,
            child: SvgPicture.asset(
              "assets/images/Group2 4.svg",
              height: 250,
            )
                .animate()
                .fade(
                  begin: 0.0,
                  end: 1.0,
                  delay: const Duration(milliseconds: 1000),
                  duration: const Duration(milliseconds: 800),
                )
                .slideX(
                  begin: -1,
                  end: 0,
                  delay: const Duration(milliseconds: 1000),
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.easeOutQuad,
                )
                .rotate(
                  begin: -0.2,
                  end: 0,
                  delay: const Duration(milliseconds: 1000),
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.easeOutQuad,
                ),
          ),
        ],
      ),
    );
  }
}
