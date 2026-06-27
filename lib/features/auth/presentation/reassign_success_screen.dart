import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monasba_app/core/utils/app_main_button.dart';
import 'package:monasba_app/core/utils/app_text_styles.dart';
import 'package:monasba_app/features/auth/widgets/background_pattern.dart';
import 'package:monasba_app/features/auth/widgets/reassign_widgets/description_rich_text.dart';

class ReassignSuccessScreen extends StatelessWidget {
  const ReassignSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BackgroundPattern(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SvgPicture.asset('assets/images/lock_success.svg'),
                  SizedBox(height: 20),
                  Text(
                    '!تم تغيير كلمة المرور بنجاح',
                    style: AppTextStyles.font16BlackRegular,
                  ),
                  SizedBox(height: 20),

                  DescriptionRichText(),

                  SizedBox(height: 70),
                  AppMainButton(title: 'تسجيل الدخول', onPressed: () {}),
                  SizedBox(height: 10),
                  Text(
                    'تصفح سياسات الاستخدام والخصوصية',
                    style: AppTextStyles.font10GreyRegular.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
