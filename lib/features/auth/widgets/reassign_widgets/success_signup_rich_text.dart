import 'package:flutter/material.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/resources/strings_maneger.dart';

class SuccessSignupRichText extends StatelessWidget {
  const SuccessSignupRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,

      text: TextSpan(
        style: AppTextStylesManeger.font12GreyRegular,
        children: [
          TextSpan(
            text: StringsManeger.wellcomeToMonasba,
            style: AppTextStylesManeger.font12BlackSecondary,
          ),
          TextSpan(
            text: StringsManeger.signUpSucessDescription,
            style: AppTextStylesManeger.font12GreyRegular,
          ),
        ],
      ),
    );
  }
}
