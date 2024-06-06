import 'package:ecommerceapp/Utils/app_colors.dart';
import 'package:ecommerceapp/Widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 5.h),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppTheme.colorWhite,
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
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.normal,
                color: AppTheme.colorBlack,
                fontWeight: FontWeight.w400,
                fontFamily: "QuicksandMedium",
              ),
              decoration: InputDecoration(
                hintText: 'Enter Email',
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
                    color: AppTheme.colorLightWhite,
                  ),
                ),
                errorStyle: const TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontFamily: "QuicksandRegular",
                  color: AppTheme.colorLightWhite,
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                    color: AppTheme.colorLightWhite,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                    color: AppTheme.colorLightWhite,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                    color: AppTheme.colorLightWhite,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                    color: AppTheme.colorLightWhite,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 4.h),
          RoundButton(
            title: "Continue",
            onTap: () {
              if (_formKey.currentState!.validate()) {
                // Handle form submission
              }
            },
          ),
        ],
      ),
    );
  }
}
