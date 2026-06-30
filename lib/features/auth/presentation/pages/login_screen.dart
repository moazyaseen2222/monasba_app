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

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController loginController = TextEditingController();
TextEditingController passwordController = TextEditingController();

bool isObscureText = true;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              // Background Pattern
              BackgroundPattern(),

              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 50.0,
                    bottom: 20.0,
                    right: 10.0,
                    left: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringsManeger.loginScreenTitle,
                        textAlign: TextAlign.right,
                        style: AppTextStylesManeger.font32BlackRegular,
                      ),

                      verticalSpace(10),

                      Text(
                        StringsManeger.loginScreenDescription,
                        style: AppTextStylesManeger.font12GreyRegular,
                      ),

                      verticalSpace(25),

                      Text(
                        StringsManeger.phoneNumber,
                        style: AppTextStylesManeger.font12GreyRegular,
                      ),

                      verticalSpace(5),

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

                      verticalSpace(18),
                      Text(
                        StringsManeger.password,
                        style: AppTextStylesManeger.font12GreyRegular,
                      ),

                      verticalSpace(5),

                      /// login password field
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
                      verticalSpace(5),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                            context.pushNamed(Routes.reassignPasswordScreen);
                          },
                          child: Text(
                            StringsManeger.forgetPassword,
                            style: AppTextStylesManeger.font12SecondaryRegular
                                .copyWith(decoration: TextDecoration.underline),
                          ),
                        ),
                      ),

                      verticalSpace(25),
                      AppMainButton(
                        title: StringsManeger.login,
                        onPressed: () {},
                      ),
                      verticalSpace(250),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringsManeger.doNotHaveAccount,
                            style: AppTextStylesManeger.font12GreyRegular,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              StringsManeger.createNewAccount,
                              style: AppTextStylesManeger.font12SecondaryRegular
                                  .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                            ),
                          ),
                        ],
                      ),
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
