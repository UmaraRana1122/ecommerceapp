import 'package:ecommerceapp/Utils/app_colors.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;
  RoundButton(
      {Key? key,
      required this.title,
      required this.onTap,
      this.loading = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
                              color: AppTheme.primaryColor,
 borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: loading
              ? CircularProgressIndicator(
                  strokeWidth: 3,
                  color: AppTheme.colorWhite,
                )
              : Text(
                  title,
                  style: TextStyle(
                  color: AppTheme.colorWhite,

                  ),
                ),
        ),
      ),
    );
  }
}
