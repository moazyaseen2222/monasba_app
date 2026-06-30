import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/helpers/extensions.dart';
import 'package:monasba_app/core/resources/images_maneger.dart';
import 'package:monasba_app/core/resources/strings_maneger.dart';
import 'package:monasba_app/core/routing/routes.dart';
import 'package:monasba_app/core/widgets/app_main_button.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';

class ReassignPasswordScreen extends StatelessWidget {
  const ReassignPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              // Background Pattern
              Positioned(
                top: 0,
                left: 0,
                child: Wrap(
                  spacing: 2,
                  runSpacing: 2,
                  children: [
                    SvgPicture.asset(
                      ImagesManeger.pattern,
                      width: 300.w,
                      height: 230.h,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 40,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 50.0.h,
                    bottom: 20.0.h,
                    right: 10.0.w,
                    left: 20.0.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringsManeger.reassignPassword,
                        textAlign: TextAlign.right,
                        style: AppTextStylesManeger.font20BlackBold,
                      ),
                      SizedBox(height: 15),
                      Text(
                        StringsManeger.reassignPasswordDescription,
                        textAlign: TextAlign.right,
                        style: AppTextStylesManeger.font14GreyRegular,
                      ),
                      SizedBox(height: 60),
                      Text(
                        StringsManeger.phoneNumber,
                        style: AppTextStylesManeger.font12GreyRegular,
                      ),
                      SizedBox(height: 15),

                      /// login phone number field
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: IntlPhoneField(
                          dropdownDecoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(5.r),
                          ),

                          initialCountryCode: 'PS',
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      verticalSpace(40),
                      AppMainButton(
                        title: StringsManeger.reset,
                        onPressed: () {
                          context.pushNamed(Routes.otpScreen);
                        },
                      ),
                    ],
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
