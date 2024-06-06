import 'package:ecommerceapp/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "On Trendgo",
          textAlign: TextAlign.start,
          style: GoogleFonts.galada(
            color: AppTheme.colorBlack,
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Image.asset(
          image!,
          height: 40.h,
          width: 70.w,
        ),
      ],
    );
  }
}
