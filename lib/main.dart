import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:roast_coffee/controllers/auth_provider.dart';
import 'package:roast_coffee/controllers/product_provider.dart';
import 'package:roast_coffee/core/utils/theme.dart';
import 'package:roast_coffee/views/bottom_navbar/bottom_nav_bar.dart';
import 'package:roast_coffee/views/home_screen/home_screen.dart';
import 'package:roast_coffee/views/login_screen.dart/login_screen.dart';
import 'package:roast_coffee/views/splash_screen.dart';

import 'models/product_model.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();

  // Register the ProductModel adapter
  Hive.registerAdapter(ProductModelAdapter());

  // Open a Hive box for products
  await Hive.openBox<ProductModel>('productsBox');
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AuthProvider()),
      ChangeNotifierProvider(create: (_) => ProductProvider()), // AuthProvider
      // UserProvider
    ],
    child: MyApp(),
  ));
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
      initialRoute: "/",
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/navbar': (context) => BottomNavBarScreen(),
      },
    );
  }
}
