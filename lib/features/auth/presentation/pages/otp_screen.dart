import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/helpers/extensions.dart';
import 'package:monasba_app/core/resources/strings_maneger.dart';
import 'package:monasba_app/core/routing/routes.dart';
import 'package:monasba_app/core/widgets/app_main_button.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/features/auth/widgets/background_pattern.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 49.w,
      height: 56.h,
      textStyle: AppTextStylesManeger.font18BlackBold,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(6.r),
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
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0.w,
                    vertical: 150.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.right,
                        StringsManeger.enterOtp,
                        style: AppTextStylesManeger.font20BlackBold,
                      ),
                      verticalSpace(20),
                      Text(
                        StringsManeger.otpDescription,
                        style: AppTextStylesManeger.font14GreyRegular,
                      ),
                      verticalSpace(130),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringsManeger.otp,
                            style: AppTextStylesManeger.font14BlackBold,
                          ),
                          verticalSpace(30),
                          Text(
                            StringsManeger.resendOtp,
                            style: AppTextStylesManeger.font14GreyRegular,
                          ),
                        ],
                      ),

                      verticalSpace(30),
                      Center(
                        child: Pinput(
                          length: 6,
                          defaultPinTheme: defaultPinTheme,
                          focusedPinTheme: defaultPinTheme.copyWith(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(6..r),
                            ),
                          ),
                          onCompleted: (code) {
                            debugPrint(code);
                          },
                        ),
                      ),
                      verticalSpace(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringsManeger.resendOtpIn,
                            style: AppTextStylesManeger.font12GreyRegular,
                          ),
                          SizedBox(width: 50),
                          Text(
                            "03:05",
                            style: AppTextStylesManeger.font12GreyRegular,
                          ),
                        ],
                      ),

                      verticalSpace(100),
                      AppMainButton(
                        title: StringsManeger.next,
                        onPressed: () {
                          context.pushNamed(Routes.updatePasswordScreen);
                        },
                      ),
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
