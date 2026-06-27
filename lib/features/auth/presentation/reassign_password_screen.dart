import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monasba_app/core/utils/app_main_button.dart';
import 'package:monasba_app/core/utils/app_text_styles.dart';
import 'package:monasba_app/features/auth/widgets/reassign_widgets/reassign_password_filed.dart';

class ReassignPasswordScreen extends StatelessWidget {
  const ReassignPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
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
                        "إعادة تعيين كلمة المرور",
                        textAlign: TextAlign.right,
                        style: AppTextStyles.font20BlackBold,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "يرجى إدخال رقم هاتفك المرتبط بحسابك. سنرسل لك تعليمات حول كيفية إنشاء كلمة مرور جديدة عبر رسالة نصية",
                        textAlign: TextAlign.right,
                        style: AppTextStyles.font14GreyRegular,
                      ),
                      SizedBox(height: 60),
                      Text(
                        "رقم الهاتف",
                        style: AppTextStyles.font12GreyRegular,
                      ),
                      SizedBox(height: 15),
                      ReassignPasswordFiled(),
                      SizedBox(height: 40),
                      AppMainButton(title: 'إعادة الضبط', onPressed: () {}),
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
