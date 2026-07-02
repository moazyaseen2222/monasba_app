import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/helpers/extensions.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';
import 'package:monasba_app/core/resources/images_maneger.dart';
import 'package:monasba_app/core/resources/strings_maneger.dart';
import 'package:monasba_app/core/routing/routes.dart';
import 'package:monasba_app/core/widgets/app_main_button.dart';

class AskAddBankAccount extends StatelessWidget {
  const AskAddBankAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 30.0.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(60),
              SvgPicture.asset(ImagesManeger.askAddBankAccount),
              verticalSpace(40),
              Text(
                StringsManeger.addBankAccount,
                style: AppTextStylesManeger.font18BlackBold,
              ),
              verticalSpace(10),
              Text(
                textAlign: TextAlign.center,
                StringsManeger.addBankAccountDescription,
                style: AppTextStylesManeger.font12GreyRegular,
              ),

              verticalSpace(80),
              AppMainButton(
                title: StringsManeger.addBankAccountButton,
                onPressed: () {
                  context.pushNamed(Routes.addBankAccountScreen);
                },
              ),
              verticalSpace(10),

              TextButton(
                onPressed: () {
                  context.pushNamed(Routes.homeScreen);
                },
                child: Text(
                  StringsManeger.skipAddBankAccount,
                  style: AppTextStylesManeger.font12GreyRegular.copyWith(
                    color: ColorsManeger.secondary,
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
