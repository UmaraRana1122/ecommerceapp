import 'package:ecommerceapp/Screens/details/color_dots.dart';
import 'package:ecommerceapp/Screens/details/default_btn.dart';
import 'package:ecommerceapp/Screens/details/product_description.dart';
import 'package:ecommerceapp/Screens/details/product_images.dart';
import 'package:ecommerceapp/Screens/details/top_rounded_container.dart';
import 'package:ecommerceapp/Utils/app_colors.dart';
import 'package:ecommerceapp/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  final Product product;

  DetailsScreen({super.key})
      : product = (Get.arguments != null && Get.arguments['product'] != null)
            ? Get.arguments['product'] as Product
            : Product(
                id: 1,
                title: 'Wireless Controller for PS4™',
                price: 64.99,
                images: [
                  "assets/images/ps4_console_white_1.png",
                  "assets/images/ps4_console_white_2.png",
                  "assets/images/ps4_console_white_3.png",
                  "assets/images/ps4_console_white_4.png",
                ],
                description: description,
                isFavourite: true,
                isPopular: true,
                colors: [
                  Color(0xFFF6625E),
                  Color(0xFF836DB8),
                  Color(0xFFDECB9C),
                  Colors.white,
                ]);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F6F9),
        appBar: buildAppBar(context),
        body: ListView(
          children: [
            product.images.isNotEmpty
                ? ProductImages(product: product)
                : Container(
                    height: 250,
                    color: Colors.grey[200],
                    child: Center(child: Text('No Image Available')),
                  ),
            SizedBox(
              height: 6.h,
            ),
            TopRoundedContainer(
              color: Colors.white,
              child: Column(
                children: [
                  ProductDescription(
                    product: product,
                    pressOnSeeMore: () {},
                  ),
                  TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        ColorDots(product: product),
                        TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: 40,
                              top: 15,
                            ),
                            child: DefaultButton(
                              text: "Add To Cart",
                              press: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SizedBox(
          height: 40,
          width: 40,
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: AppTheme.colorBlack,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
              backgroundColor: Colors.white,
              padding: EdgeInsets.zero,
            ),
            onPressed: () => Navigator.pop(context),
            child: SvgPicture.asset(
              "assets/icons/Back ICon.svg",
              height: 15,
            ),
          ),
        ),
      ),
      actions: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Text(
                "${product.rating}",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 5),
              SvgPicture.asset("assets/icons/Star Icon.svg"),
            ],
          ),
        ),
      ],
    );
  }
}
