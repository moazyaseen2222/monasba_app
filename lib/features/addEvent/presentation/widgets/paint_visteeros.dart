import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';

class Paintvisteros extends StatelessWidget {
  const Paintvisteros({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84.h,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 42.h,
            width: 42.w,
            decoration: BoxDecoration(
              color: ColorsManeger.secondary,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(Icons.file_copy, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0.h, right: 7.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'طباعة المدعويين',
                      style: AppTextStylesManeger.font14BlackRegular,
                    ),
                    horiznetlSpace(110),
                    Container(
                      height: 18.h,
                      width: 63.w,
                      decoration: BoxDecoration(
                        color: ColorsManeger.secondary,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.done, color: Colors.white, size: 15),
                          Text(
                            'تفعيل الميزة',
                            style: AppTextStylesManeger.font7WhiteRegular,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                verticalSpace(5),
                RichText(
                  text: TextSpan(
                    text:
                        'فعّل اشتراك طباعة المدعوين، واحصل بعد الفرح على نسخة\nمطبوعة من قائمة المدعوين مع جميع تفاصيلهم مقابل ',
                    style: AppTextStylesManeger.font10GreyRegular,
                    children: [
                      TextSpan(
                        text: '200 ريال',
                        style: AppTextStylesManeger.font12BlackRegular,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
