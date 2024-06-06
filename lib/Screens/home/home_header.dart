import 'package:ecommerceapp/Screens/home/icon_btn_container.dart';
import 'package:ecommerceapp/Screens/home/search_feild.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SearchField(),
        IconBtnWithCounter(
          svgSrc: "assets/icons/Cart Icon.svg",
          press: () {},
        ),
        IconBtnWithCounter(
          svgSrc: "assets/icons/Bell.svg",
          numOfitem: 3,
          press: () {},
        ),
      ],
    );
  }
}
