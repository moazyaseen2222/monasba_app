import 'package:flutter/material.dart';
import 'package:monasba_app/core/utils/app_colors.dart';
import 'package:monasba_app/core/utils/app_main_button.dart';
import 'package:monasba_app/core/utils/app_text_styles.dart';
import 'package:monasba_app/features/auth/widgets/background_pattern.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 49,
      height: 56,
      textStyle: AppTextStyles.font18BlackBold,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(6),
      ),
    );

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            // Background Pattern
            BackgroundPattern(),
            SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 150,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.right,
                        "أدخل رمز التحقق",
                        style: AppTextStyles.font20BlackBold,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "لقد أرسلنا رمز التحقق إلى +628*******716 هل تريد تغييره؟",
                        style: AppTextStyles.font14GreyRegular,
                      ),
                      SizedBox(height: 130),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "رمز التحقق",
                            style: AppTextStyles.font14BlackBold,
                          ),
                          SizedBox(width: 50),
                          Text(
                            "إعادة إرسال الرمز",
                            style: AppTextStyles.font14GreyRegular,
                          ),
                        ],
                      ),

                      const SizedBox(height: 30),

                      Center(
                        child: Pinput(
                          length: 6,
                          defaultPinTheme: defaultPinTheme,
                          focusedPinTheme: defaultPinTheme.copyWith(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          onCompleted: (code) {
                            debugPrint(code);
                          },
                        ),
                      ),
                      SizedBox(height: 30),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "إرسال رمز إعادة الضبط في",
                            style: AppTextStyles.font12GreyRegular,
                          ),
                          SizedBox(width: 50),
                          Text("03:05", style: AppTextStyles.font12GreyRegular),
                        ],
                      ),

                      SizedBox(height: 100),
                      AppMainButton(title: ('التالي'), onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
