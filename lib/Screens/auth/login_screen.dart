import 'package:ecommerceapp/Screens/auth/forgot_password.dart';
import 'package:ecommerceapp/Screens/auth/login_with_phone.dart';
import 'package:ecommerceapp/Screens/auth/signup_screen.dart';
import 'package:ecommerceapp/Utils/app_colors.dart';
import 'package:ecommerceapp/Widgets/button_widget.dart';
import 'package:ecommerceapp/Widgets/round_button.dart';
import 'package:ecommerceapp/Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isObscure = true;
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
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
                width: 50.w,
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
                  ],
                ),
              ),
              SizedBox(height: 1.5.h),
              Container(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword()));
                        FocusScope.of(context).unfocus();
                      },
                      child: Text("Forgot Password?",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff677ea2))))),
              SizedBox(
                height: 5.h,
              ),
              RoundButton(
                title: 'Log In',
                loading: loading,
                onTap: () {},
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                textWidget("Does'nt have account?",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.colorBlack),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                  child: Text('Register here',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff677ea2))),
                ),
              ]),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginWithPhoneNumber()));
                  },
                  child: buttonWidget(5, 95, "Login with Phone"))
            ],
          ),
        ),
      ),
    );
  }
}
