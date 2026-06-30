import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monasba_app/core/resources/images_maneger.dart';
import 'package:monasba_app/core/resources/strings_maneger.dart';
import 'package:monasba_app/core/widgets/app_main_button.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/features/auth/widgets/background_pattern.dart';
import 'package:monasba_app/features/auth/widgets/reassign_widgets/description_rich_text.dart';
import 'package:monasba_app/features/auth/widgets/reassign_widgets/success_signup_rich_text.dart';

class SignUpSuccessScreen extends StatelessWidget {
  const SignUpSuccessScreen({super.key});

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
                  SvgPicture.asset(ImagesManeger.success),
                  SizedBox(height: 20),
                  Text(
                    StringsManeger.accountCreatedSuccessfully,
                    style: AppTextStylesManeger.font16BlackRegular,
                  ),
                  SizedBox(height: 20),

                  SuccessSignupRichText(),

                  SizedBox(height: 70),
                  AppMainButton(title: StringsManeger.login, onPressed: () {}),
                  SizedBox(height: 10),
                  Text(
                    StringsManeger.seeTrems,
                    style: AppTextStylesManeger.font10GreyRegular.copyWith(
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
