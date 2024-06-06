import 'package:ecommerceapp/Utils/app_colors.dart';
import 'package:flutter/material.dart';



class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: (56),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white, shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: AppTheme.colorBlack,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: (18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
