import 'package:ecommerceapp/Screens/auth/login_screen.dart';
import 'package:ecommerceapp/Utils/app_colors.dart';
import 'package:ecommerceapp/Widgets/round_button.dart';
import 'package:ecommerceapp/Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        "assets/logo/arrow.png",
                        color: Colors.black,
                        height: 2.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Image.asset(
                    "assets/images/splash_1.png",
                    width: 80.w,
                  ),
                  SizedBox(height: 4.h),
                  textWidget("Welcome Back!",
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.colorBlack),
                  SizedBox(height: 3.h),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
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
                            controller: emailController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter your email or phone number";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.text,
                            style: const TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              color: AppTheme.colorBlack,
                              fontWeight: FontWeight.w400,
                              fontFamily: "QuicksandMedium",
                            ),
                            decoration: InputDecoration(
                              hintText: 'Email or Phone',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                color: AppTheme.colorGrey,
                                fontWeight: FontWeight.w400,
                                fontFamily: "QuicksandRegular",
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 16),
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
                                color: AppTheme.colorMeroon,
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
                        SizedBox(height: 2.h),
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
                            controller: passwordController,
                            obscureText: _isObscure,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter a password";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.text,
                            style: const TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              color: AppTheme.colorBlack,
                              fontWeight: FontWeight.w400,
                              fontFamily: "QuicksandMedium",
                            ),
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                color: AppTheme.colorGrey,
                                fontWeight: FontWeight.w400,
                                fontFamily: "QuicksandRegular",
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 16),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: AppTheme.colorGrey,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
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
                                color: AppTheme.colorMeroon,
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  RoundButton(title: 'Sign Up', loading: loading, onTap: () {}),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    textWidget("Already have account?",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: AppTheme.colorBlack),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text('Login here',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff677ea2))),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
