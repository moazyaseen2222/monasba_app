import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/helpers/app_regex.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/helpers/extensions.dart';
import 'package:monasba_app/core/resources/strings_maneger.dart';
import 'package:monasba_app/core/routing/routes.dart';
import 'package:monasba_app/core/widgets/app_main_button.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/widgets/app_main_text_field.dart';
import 'package:monasba_app/features/auth/widgets/background_pattern.dart';

class UpdatePasswordScreen extends StatelessWidget {
  UpdatePasswordScreen({super.key});

  bool obscureText = true;
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              BackgroundPattern(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 25.w,
                  vertical: 120.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringsManeger.enterNewPassword,
                      style: AppTextStylesManeger.font20BlackBold,
                    ),
                    verticalSpace(15),
                    Text(
                      StringsManeger.enterNewPasswordDescription,
                      style: AppTextStylesManeger.font14GreyRegular,
                    ),
                    verticalSpace(70),
                    Text(
                      StringsManeger.password,
                      style: AppTextStylesManeger.font12GreyRegular,
                    ),
                    verticalSpace(10),
                    // PasswordFiled(),
                    AppTextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return StringsManeger.enterPassword;
                        } else if (!AppRegex.isPasswordValid(value)) {
                          return StringsManeger.unValiedPassword;
                        }
                        return null;
                      },
                      obscureText: obscureText,
                    ),
                    verticalSpace(20),
                    Row(
                      children: [
                        Icon(Icons.info_outline),
                        SizedBox(width: 5.w),
                        Text(
                          StringsManeger.passwordShouldBe6,
                          style: AppTextStylesManeger.font12GreyRegular,
                        ),
                      ],
                    ),
                    verticalSpace(60),
                    Text(
                      StringsManeger.confirmNewPassword,
                      style: AppTextStylesManeger.font12GreyRegular,
                    ),
                    verticalSpace(10),
                    AppTextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return StringsManeger.enterPassword;
                        } else if (!AppRegex.isPasswordValid(value)) {
                          return StringsManeger.unValiedPassword;
                        }
                        return null;
                      },
                      obscureText: obscureText,
                    ),

                    Spacer(),
                    AppMainButton(
                      title: StringsManeger.saveUpdate,
                      onPressed: () {
                        context.pushReplacementNamed(
                          Routes.reassignPasswordSuccessScreen,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
