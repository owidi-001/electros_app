import 'package:electros/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/order/cart_screen.dart';
import 'screens/product/product_detail_screen.dart';
import 'screens/product/product_list_screen.dart';
import 'screens/user/dashboard.dart';
import 'screens/auth/launch_screen.dart';
import 'screens/auth/registration_screen.dart';
import 'screens/auth/splash_screen.dart';
import 'screens/user/profile_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electros',
      initialRoute: "/",
      routes: {
        // launch and auth
        "/": (context) => const SplashScreen(),
        CustomRoutes.launchRoute: (context) => const LaunchScreen(),
        CustomRoutes.registrationRoute: (context) => const RegistrationScreen(),

        // dashboard
        CustomRoutes.dashboardRoute: (context) => const DashboardScreen(),
        CustomRoutes.productListRoute: (context) => const ProductListScreen(),
        CustomRoutes.productDetailRoute: (context) => const ProductDetailScreen(),

        // cart
        CustomRoutes.cartRoute: (context) => const CartScreen(),
        
        // profile
        CustomRoutes.profileRoute: (context) => const ProfileScreen(),
      },
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      
    );
  }
}
