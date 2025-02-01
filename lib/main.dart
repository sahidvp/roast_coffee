import 'package:flutter/material.dart';
import 'package:roast_coffee/core/utils/theme.dart';
import 'package:roast_coffee/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Roast coffee',
      theme: AppThemes.themeData,
      home: SplashScreen(),
    );
  }
}
