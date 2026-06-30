import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:monasba_app/core/helpers/app_regex.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/helpers/extensions.dart';
import 'package:monasba_app/core/resources/strings_maneger.dart';
import 'package:monasba_app/core/routing/routes.dart';
import 'package:monasba_app/core/widgets/app_main_button.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/widgets/app_main_text_field.dart';
import 'package:monasba_app/features/auth/widgets/background_pattern.dart';
import 'package:monasba_app/features/auth/widgets/password_filed.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameEditingController = TextEditingController();

  bool isObscureText = true;
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              BackgroundPattern(),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 90.0.h,
                    // bottom: 20.0,
                    right: 10.0.w,
                    left: 20.0.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringsManeger.createYourAccount,
                        style: AppTextStylesManeger.font32BlackRegular,
                      ),
                      verticalSpace(10),
                      Text(
                        StringsManeger.signUpDescription,
                        style: AppTextStylesManeger.font12GreyRegular,
                      ),
                      verticalSpace(50),
                      Text(
                        StringsManeger.fullName,
                        style: AppTextStylesManeger.font14GreyRegular,
                      ),
                      verticalSpace(10),
                      AppTextFormField(
                        controller: nameEditingController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return StringsManeger.enterFullName;
                          } else if (!AppRegex.hasNameMinLength(value)) {
                            return StringsManeger.unValiedPassword;
                          }
                          return null;
                        },
                        obscureText: obscureText,
                      ),

                      verticalSpace(30),

                      Text(
                        StringsManeger.phoneNumber,
                        style: AppTextStylesManeger.font14GreyRegular,
                      ),
                      verticalSpace(10),

                      /// login phone number field
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: IntlPhoneField(
                          dropdownDecoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(5.r),
                          ),

                          initialCountryCode: 'PS',
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),

                      verticalSpace(30),

                      Text(
                        StringsManeger.assignPassword,
                        style: AppTextStylesManeger.font14GreyRegular,
                      ),
                      verticalSpace(10),
                      AppTextFormField(
                        isObsecureText: isObscureText,
                        obscureText: isObscureText,
                        hintText: '********',
                        controller: passwordController,
                        suffixIcon: IconButton(
                          icon: Icon(
                            isObscureText
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return StringsManeger.enterPassword;
                          } else if (!AppRegex.isPasswordValid(value)) {
                            return StringsManeger.unValiedPassword;
                          }
                          return null;
                        },
                      ),
                      verticalSpace(30),

                      Text(
                        StringsManeger.confirmPassword,
                        style: AppTextStylesManeger.font14GreyRegular,
                      ),
                      SizedBox(height: 10),
                      AppTextFormField(
                        isObsecureText: isObscureText,
                        obscureText: isObscureText,
                        hintText: '********',
                        controller: passwordController,
                        suffixIcon: IconButton(
                          icon: Icon(
                            isObscureText
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return StringsManeger.enterPassword;
                          } else if (!AppRegex.isPasswordValid(value)) {
                            return StringsManeger.unValiedPassword;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 40),
                      AppMainButton(title: 'إنشاء حساب جديد', onPressed: () {}),

                      SizedBox(height: 100),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringsManeger.alreadyHaveAccount,
                            style: AppTextStylesManeger.font12BlackRegular,
                          ),
                          TextButton(
                            child: Text(
                              StringsManeger.login,
                              style: AppTextStylesManeger.font12BlackSecondary,
                            ),
                            onPressed: () {
                              context.pushNamed(Routes.loginScreen);
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
