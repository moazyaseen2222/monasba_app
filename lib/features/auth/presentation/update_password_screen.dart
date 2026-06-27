import 'package:flutter/material.dart';
import 'package:monasba_app/core/utils/app_main_button.dart';
import 'package:monasba_app/core/utils/app_text_styles.dart';
import 'package:monasba_app/features/auth/widgets/background_pattern.dart';
import 'package:monasba_app/features/auth/widgets/password_filed.dart';

class UpdatePasswordScreen extends StatelessWidget {
  const UpdatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                BackgroundPattern(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ادخل كلمة المرور الجديدة!',
                        style: AppTextStyles.font20BlackBold,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'استكمل البيانات النهائية التالية للدخول إلى تطبيق مناسبة',
                        style: AppTextStyles.font14GreyRegular,
                      ),
                      SizedBox(height: 70),
                      Text(
                        'كلمة المرور',
                        style: AppTextStyles.font12GreyRegular,
                      ),
                      SizedBox(height: 10),
                      PasswordFiled(),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(Icons.info_outline),
                          SizedBox(width: 5),
                          Text(
                            'يجب أن تكون كلمة المرور مكونة من 6 أحرف أو أكثر',
                            style: AppTextStyles.font12GreyRegular,
                          ),
                        ],
                      ),
                      SizedBox(height: 60),
                      Text(
                        'تأكيد كلمة المرور الجديدة',
                        style: AppTextStyles.font12GreyRegular,
                      ),
                      SizedBox(height: 10),
                      PasswordFiled(),

                      Spacer(),
                      AppMainButton(title: 'حفظ التحديث', onPressed: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
