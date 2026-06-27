import 'package:flutter/material.dart';
import 'package:monasba_app/core/utils/app_main_button.dart';
import 'package:monasba_app/core/utils/app_text_styles.dart';
import 'package:monasba_app/features/auth/widgets/app_text_filed.dart';
import 'package:monasba_app/features/auth/widgets/background_pattern.dart';
import 'package:monasba_app/features/auth/widgets/login_widgets/build_login_phonenumber_filed.dart';
import 'package:monasba_app/features/auth/widgets/password_filed.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 90.0,
                    // bottom: 20.0,
                    right: 10.0,
                    left: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'أنشئ حسابك',
                        style: AppTextStyles.font32BlackRegular,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'ادخل البيانات التالية لإنشاء حساب جديد,ابدء الان انه مجاني',
                        style: AppTextStyles.font12GreyRegular,
                      ),
                      SizedBox(height: 50),
                      Text(
                        'الاسم الكامل',
                        style: AppTextStyles.font14GreyRegular,
                      ),
                      SizedBox(height: 10),
                      AppTextFiled(hintText: 'يوسف عابدين'),

                      SizedBox(height: 30),

                      Text(
                        'رقم الهاتف',
                        style: AppTextStyles.font14GreyRegular,
                      ),
                      SizedBox(height: 10),
                      AppPhoneNumberFiled(),

                      SizedBox(height: 30),

                      Text(
                        'تعيين كلمة المرور',
                        style: AppTextStyles.font14GreyRegular,
                      ),
                      SizedBox(height: 10),
                      PasswordFiled(),
                      SizedBox(height: 30),

                      Text(
                        'تأكيد كلمة المرور',
                        style: AppTextStyles.font14GreyRegular,
                      ),
                      SizedBox(height: 10),
                      PasswordFiled(),

                      SizedBox(height: 40),
                      AppMainButton(title: 'إنشاء حساب جديد', onPressed: () {}),

                      SizedBox(height: 100),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'لدي حساب بالفعل؟',
                            style: AppTextStyles.font12BlackRegular,
                          ),
                          TextButton(
                            child: Text(
                              'تسجيل الدخول',
                              style: AppTextStyles.font12BlackSecondary,
                            ),
                            onPressed: () {},
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
