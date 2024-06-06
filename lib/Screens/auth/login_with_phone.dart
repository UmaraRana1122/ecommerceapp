import 'package:ecommerceapp/Screens/auth/verify_code_screen.dart';
import 'package:ecommerceapp/Utils/app_colors.dart';
import 'package:ecommerceapp/Widgets/round_button.dart';

import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class LoginWithPhoneNumber extends StatefulWidget {
  const LoginWithPhoneNumber({super.key});

  @override
  State<LoginWithPhoneNumber> createState() => _LoginWithPhoneNumberState();
}

class _LoginWithPhoneNumberState extends State<LoginWithPhoneNumber> {
  final phoneNumberController = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login with Phone"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 7.h,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 3,
                    blurRadius: 3,
                  ),
                ],
              ),
              child: TextFormField(
                controller: phoneNumberController,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  color: AppTheme.colorBlack,
                  fontWeight: FontWeight.w400,
                  fontFamily: "QuicksandMedium",
                ),
                decoration: InputDecoration(
                  hintText: '+92 340 1122334',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    color: AppTheme.colorGrey,
                    fontWeight: FontWeight.w400,
                    fontFamily: "QuicksandRegular",
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide:
                        const BorderSide(color: AppTheme.colorLightWhite),
                  ),
                  errorStyle: const TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontFamily: "QuicksandRegular",
                    color: AppTheme.colorMeroon,
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide:
                        const BorderSide(color: AppTheme.colorLightWhite),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide:
                        const BorderSide(color: AppTheme.colorLightWhite),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide:
                        const BorderSide(color: AppTheme.colorLightWhite),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide:
                        const BorderSide(color: AppTheme.colorLightWhite),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            RoundButton(title: "Login", loading: loading, onTap: () {})
          ],
        ),
      ),
    );
  }
}
