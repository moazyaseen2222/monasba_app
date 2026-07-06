import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';

class MonasbaDetailesContainer extends StatelessWidget {
  const MonasbaDetailesContainer({
    super.key,
    required this.icon,
    required this.number,
    required this.text,
  });

  final Icon icon;
  final String number;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76.h,
      width: 101.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Color.fromARGB(16, 53, 108, 247),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          icon,
          Text(number, style: AppTextStylesManeger.font16BlackRegular),
          Text(text, style: AppTextStylesManeger.font11BlackRegular),
        ],
      ),
    );
  }
}
