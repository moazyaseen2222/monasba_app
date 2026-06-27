import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monasba_app/core/utils/app_main_button.dart';
import 'package:monasba_app/core/utils/app_text_styles.dart';
import 'package:monasba_app/features/auth/widgets/login_widgets/build_login_phonenumber_filed.dart';
import 'package:monasba_app/features/auth/widgets/login_widgets/build_password_filed.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

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
              Positioned(
                top: 0,
                left: 0,
                child: Wrap(
                  spacing: 2,
                  runSpacing: 2,
                  children: [
                    SvgPicture.asset(
                      'assets/images/pattern.svg',
                      width: 300,
                      height: 230,
                    ),
                  ],
                ),
              ),

              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 40,
                ),
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
                        "تسجيل الدخول إلى\nحسابك",
                        textAlign: TextAlign.right,
                        style: AppTextStyles.font32BlackRegular,
                      ),

                      const SizedBox(height: 10),

                      Text(
                        "أدخل رقم الهاتف وكلمة المرور لتسجيل الدخول",
                        style: AppTextStyles.font12GreyRegular,
                      ),

                      const SizedBox(height: 25),

                      Text(
                        "رقم الهاتف",
                        style: AppTextStyles.font12GreyRegular,
                      ),

                      const SizedBox(height: 5),

                      /// login phone number field
                      AppPhoneNumberFiled(),

                      const SizedBox(height: 18),

                      Text(
                        "كلمة المرور",
                        style: AppTextStyles.font12GreyRegular,
                      ),

                      const SizedBox(height: 5),

                      /// login password field
                      LoginPasswordFiled(),

                      const SizedBox(height: 5),

                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "هل نسيت كلمة السر ؟",
                            style: AppTextStyles.font12SecondaryRegular
                                .copyWith(decoration: TextDecoration.underline),
                          ),
                        ),
                      ),

                      const SizedBox(height: 25),

                      AppMainButton(title: 'تسجيل الدخول', onPressed: () {}),
                      const SizedBox(height: 280),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ليس لديك حساب؟",
                            style: AppTextStyles.font12GreyRegular,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              " جديد إنشاء حساب",
                              style: AppTextStyles.font12SecondaryRegular
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
