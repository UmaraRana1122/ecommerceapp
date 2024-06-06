import 'package:ecommerceapp/Screens/auth/forgot_password.dart';
import 'package:ecommerceapp/Screens/auth/login_screen.dart';
import 'package:ecommerceapp/Screens/details/detail_screen.dart';
import 'package:ecommerceapp/Screens/home/home_screen.dart';
import 'package:ecommerceapp/Screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        );
      },
    );
  }
}
