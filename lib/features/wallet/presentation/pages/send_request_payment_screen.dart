import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monasba_app/core/helpers/app_regex.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/helpers/extensions.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';
import 'package:monasba_app/core/resources/strings_maneger.dart';
import 'package:monasba_app/core/routing/routes.dart';
import 'package:monasba_app/core/widgets/app_main_button.dart';
import 'package:monasba_app/core/widgets/app_main_text_field.dart';
import 'package:monasba_app/features/wallet/presentation/widgets/send_request_app_bar.dart';

class SendRequestPaymentScreen extends StatelessWidget {
  SendRequestPaymentScreen({super.key});

  TextEditingController amountTextController = TextEditingController();
  TextEditingController notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SendRequestAppBar(),

      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 42.h,
                      width: 42.w,
                      decoration: BoxDecoration(
                        color: ColorsManeger.secondary,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Icon(Icons.wallet, color: Colors.white),
                    ),
                    horiznetlSpace(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          'طلب سحب جديد',
                          style: AppTextStylesManeger.font14BlackRegular,
                        ),
                        Text(
                          'اختر قيمة السحب وتأكد من بياناتك البنكية لإتمام التحويل بأمان.',
                          style: AppTextStylesManeger.font10GreyRegular,
                        ),
                      ],
                    ),
                  ],
                ),
                verticalSpace(15),
                Row(
                  children: [
                    Text(
                      'المبلغ المطلوب',
                      style: AppTextStylesManeger.font12BlackRegular,
                    ),
                    Spacer(),
                    Text('3,200', style: AppTextStylesManeger.font14BlackBold),
                    horiznetlSpace(5),
                    SvgPicture.asset('assets/images/riyal.svg'),
                  ],
                ),

                verticalSpace(15),
                AppTextFormField(
                  keyboardType: TextInputType.number,
                  hintText: '0',
                  controller: amountTextController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'أدخل المبلغ';
                    } else if (!AppRegex.hasNAmountMinLength(value)) {
                      return '';
                    }
                    return null;
                  },
                  obscureText: false,
                  onChanged: (value) {},
                ),

                verticalSpace(15),
                Text(
                  'الملاحظات',
                  style: AppTextStylesManeger.font12BlackRegular,
                ),
                verticalSpace(10),
                AppTextFormField(
                  maxLines: 5,
                  minLines: 3,
                  hintText: 'إذا كان لديك ملاحظات تخص عملية السحب، اكتبها هنا',

                  keyboardType: TextInputType.multiline,
                  controller: notesController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '';
                    }
                    return null;
                  },
                  obscureText: false,
                  onChanged: (value) {},
                ),
                verticalSpace(15),

                Text(
                  'الحساب البنكي',
                  style: AppTextStylesManeger.font12BlackRegular,
                ),
                verticalSpace(10),
                Container(
                  height: 43.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(16, 53, 108, 247),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'الراجحي • SA** **** **** ***1234',
                          style: AppTextStylesManeger.font12BlackRegular,
                        ),

                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'تغيير الحساب',
                            style: AppTextStylesManeger.font11BlackRegular,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                verticalSpace(20),
                AppMainButton(
                  title: 'تأكيد السحب',
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
                              StringsManeger.confirmSendingRequest,
                            ),
                          ),
                          content: Text(
                            textAlign: TextAlign.center,

                            StringsManeger.confirmSendingRequestDescription,
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
                                          AppTextStylesManeger.font14WhiteBold,
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
                                      style: AppTextStylesManeger.font14RedBold,
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
                ),
                verticalSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.alarm_outlined, size: 15, color: Colors.grey),
                    horiznetlSpace(5),
                    Text(
                      'سيتم التحويل خلال 1- 3 أيام عمل',
                      style: AppTextStylesManeger.font10GreyRegular,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
