import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';

class ImageHead extends StatelessWidget {
  const ImageHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 42.h,
          width: 42.w,
          decoration: BoxDecoration(
            color: ColorsManeger.secondary,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Icon(Icons.image_outlined, color: Colors.white),
        ),
        horiznetlSpace(7),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'صورة المناسبة',
              style: AppTextStylesManeger.font14BlackRegular,
            ),
            Text(
              'أرفق صورة توضّح طبيعة النشاط بشكل أفضل',
              style: AppTextStylesManeger.font10GreyRegular,
            ),
          ],
        ),
      ],
    );
  }
}
