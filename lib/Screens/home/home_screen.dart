import 'package:ecommerceapp/Screens/home/categories.dart';
import 'package:ecommerceapp/Screens/home/discount_banner.dart';
import 'package:ecommerceapp/Screens/home/home_header.dart';
import 'package:ecommerceapp/Screens/home/popular_products.dart';
import 'package:ecommerceapp/Screens/home/spaecial_offers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                SizedBox(height: 20),
                HomeHeader(),
                SizedBox(height: 10),
                DiscountBanner(),
                SizedBox(height: 20),
                Categories(),
                SizedBox(height: 20),
                SpecialOffers(),
                SizedBox(height: (30)),
                PopularProducts(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
