import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/helpers/app_regex.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/helpers/extensions.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';
import 'package:monasba_app/core/resources/strings_maneger.dart';
import 'package:monasba_app/core/routing/routes.dart';
import 'package:monasba_app/core/widgets/app_main_button.dart';
import 'package:monasba_app/core/widgets/app_main_text_field.dart';

class AddBankAccountScreen extends StatelessWidget {
  AddBankAccountScreen({super.key});

  TextEditingController bankNameController = TextEditingController();
  TextEditingController accountOnwerNameController = TextEditingController();

  TextEditingController accountfullNumberControoler = TextEditingController();

  TextEditingController accountIbanNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90.r,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringsManeger.addingBankAccount,
                style: AppTextStylesManeger.font16WhiteRegular,
              ),
              verticalSpace(5.h),
              Text(
                StringsManeger.addingBankAccountAppBarDesc,
                style: AppTextStylesManeger.font10WhiteRegular,
              ),
            ],
          ),

          backgroundColor: ColorsManeger.primary,
        ),

        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(20),
                  Text(
                    StringsManeger.addBankAccount,
                    style: AppTextStylesManeger.font14BlackRegular,
                  ),
                  verticalSpace(10),

                  Text(
                    StringsManeger.addBankAccountDescription,
                    style: AppTextStylesManeger.font12GreyRegular,
                  ),

                  verticalSpace(25),

                  Text(
                    StringsManeger.bankName,
                    style: AppTextStylesManeger.font12BlackRegular,
                  ),
                  verticalSpace(5),
                  AppTextFormField(
                    hintText: StringsManeger.enterBankName,
                    hintStyle: AppTextStylesManeger.font12GreyLight,
                    controller: bankNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return StringsManeger.enterBankName;
                      } else if (!AppRegex.hasNameMinLength(value)) {
                        return StringsManeger.inValiedName;
                      }
                      return null;
                    },
                    obscureText: false,
                    onChanged: (value) {},
                  ),

                  verticalSpace(20.h),

                  Text(
                    StringsManeger.accountOnwerName,
                    style: AppTextStylesManeger.font12BlackRegular,
                  ),
                  verticalSpace(5.h),
                  AppTextFormField(
                    hintText: StringsManeger.enterAccountOnwerName,
                    hintStyle: AppTextStylesManeger.font12GreyLight,
                    controller: accountOnwerNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return StringsManeger.enterAccountOnwerName;
                      } else if (!AppRegex.hasNameMinLength(value)) {
                        return StringsManeger.inValiedName;
                      }
                      return null;
                    },
                    obscureText: false,
                    onChanged: (value) {},
                  ),

                  verticalSpace(20.h),

                  Text(
                    StringsManeger.accountfullNumber,
                    style: AppTextStylesManeger.font12BlackRegular,
                  ),
                  verticalSpace(10.h),
                  AppTextFormField(
                    keyboardType: TextInputType.number,
                    hintText: StringsManeger.enterAccountfullNumber,
                    hintStyle: AppTextStylesManeger.font12GreyLight,
                    controller: accountfullNumberControoler,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return StringsManeger.enterAccountfullNumber;
                      } else if (!AppRegex.hasNameMinLength(value)) {
                        return StringsManeger.inValiedName;
                      }
                      return null;
                    },
                    obscureText: false,
                    onChanged: (value) {},
                  ),
                  verticalSpace(20.h),

                  Text(
                    StringsManeger.accountIbanNumber,
                    style: AppTextStylesManeger.font12BlackRegular,
                  ),
                  verticalSpace(10.h),
                  AppTextFormField(
                    hintText: StringsManeger.enterAccountIbanNumber,
                    hintStyle: AppTextStylesManeger.font12GreyLight,
                    controller: accountIbanNumber,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return StringsManeger.enterFullName;
                      } else if (!AppRegex.hasNameMinLength(value)) {
                        return StringsManeger.inValiedName;
                      }
                      return null;
                    },
                    obscureText: false,
                    onChanged: (value) {},
                  ),

                  verticalSpace(25.h),
                  AppMainButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,

                            titleTextStyle:
                                AppTextStylesManeger.font16BlackRegular,
                            title: Center(
                              child: const Text(
                                StringsManeger.confirmAddingBankAccount,
                              ),
                            ),
                            content: Text(
                              textAlign: TextAlign.center,

                              StringsManeger
                                  .confirmAddingBankAccountDescription,
                              style: AppTextStylesManeger.font14GreyRegular,
                            ),
                            actions: [
                              Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10.0.r,
                                          ),
                                        ),
                                        fixedSize: Size(125.w, 42.h),
                                        backgroundColor: ColorsManeger.primary,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        context.pushReplacementNamed(
                                          Routes.homeScreen,
                                        );
                                      },

                                      child: Text(
                                        StringsManeger.confirm,
                                        style:
                                            AppTextStylesManeger
                                                .font14WhiteBold,
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10.0.r,
                                          ),
                                        ),
                                        fixedSize: Size(125.w, 42.h),
                                        backgroundColor: const Color.fromARGB(
                                          188,
                                          239,
                                          198,
                                          203,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },

                                      child: Text(
                                        StringsManeger.cancel,
                                        style:
                                            AppTextStylesManeger.font14RedBold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    title: 'إضافة الحساب',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
