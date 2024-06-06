import 'package:ecommerceapp/Utils/app_colors.dart';
import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.10,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppTheme.colorBlue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 14),
          child: Text.rich(
            TextSpan(
              style: TextStyle(color: AppTheme.colorWhite),
              children: [
                TextSpan(text: "A Summer Surpise\n"),
                TextSpan(
                  text: "Cashback 20%",
                  style: TextStyle(
                    fontSize: (24),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
