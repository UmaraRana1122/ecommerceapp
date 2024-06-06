import 'package:ecommerceapp/Utils/app_colors.dart';
import 'package:ecommerceapp/Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        textWidget(title, fontSize: 16.sp, fontWeight: FontWeight.w600),
        GestureDetector(
            onTap: press,
            child: textWidget("See More",
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: AppTheme.colorGrey)),
      ],
    );
  }
}
