import 'package:flutter/material.dart';
import 'package:monasba_app/core/utils/app_colors.dart';
import 'package:monasba_app/core/utils/app_text_styles.dart';

class DescriptionRichText extends StatelessWidget {
  const DescriptionRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,

      text: TextSpan(
        style: AppTextStyles.font12GreyRegular,
        children: [
          TextSpan(
            text:
                'تم تغيير كلمة المرور بنجاح ! يمكنك الأن تسجيل الدخول ومتابعة استخدام',
          ),
          TextSpan(
            text: 'مناسبة بكل سلاسة',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
