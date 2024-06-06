import 'package:ecommerceapp/Utils/app_colors.dart';
import 'package:ecommerceapp/Widgets/round_button.dart';

import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class VerifyCodeScreen extends StatefulWidget {
  final verificationId;
  const VerifyCodeScreen({super.key, required this.verificationId});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  final verifyCodeController = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verify"),
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
                controller: verifyCodeController,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  color: AppTheme.colorBlack,
                  fontWeight: FontWeight.w400,
                  fontFamily: "QuicksandMedium",
                ),
                decoration: InputDecoration(
                  hintText: '6 digit code',
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
                    borderSide: const BorderSide(
                                         color: AppTheme.colorLightWhite

                    ),
                  ),
                  errorStyle: const TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontFamily: "QuicksandRegular",
                    color: AppTheme.colorMeroon,
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                                           color: AppTheme.colorLightWhite

                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                                     color: AppTheme.colorLightWhite

                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                                       color: AppTheme.colorLightWhite

                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color:AppTheme.colorLightWhite
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            RoundButton(
                title: "Verify",
                loading: loading,
                onTap: () async {
                
                })
          ],
        ),
      ),
    );
  }
}
