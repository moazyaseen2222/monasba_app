import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/helpers/extensions.dart';
import 'package:monasba_app/core/resources/images_maneger.dart';
import 'package:monasba_app/core/resources/strings_maneger.dart';
import 'package:monasba_app/core/routing/routes.dart';
import 'package:monasba_app/core/widgets/app_main_button.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
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
              padding: EdgeInsets.symmetric(horizontal: 30.0.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SvgPicture.asset(ImagesManeger.lockSuccess),
                  SizedBox(height: 20),
                  Text(
                    StringsManeger.passowrdChangedSuccessfully,
                    style: AppTextStylesManeger.font16BlackRegular,
                  ),
                  verticalSpace(30),

                  DescriptionRichText(),

                  verticalSpace(70),
                  AppMainButton(
                    title: StringsManeger.login,
                    onPressed: () {
                      context.pushReplacementNamed(Routes.signUpScreen);
                    },
                  ),
                  verticalSpace(10),
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
