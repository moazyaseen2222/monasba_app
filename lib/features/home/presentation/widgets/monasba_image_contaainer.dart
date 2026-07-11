import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';

class MonasbaImage extends StatelessWidget {
  const MonasbaImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Image(
            image: AssetImage('assets/images/current_monasba1.png'),
            fit: BoxFit.fitWidth,
            width: double.infinity,
          ),
        ),
        Positioned(
          right: 20.w,
          top: 15.h,
          child: Container(
            clipBehavior: Clip.none,
            height: 24.h,
            width: 146.w,
            decoration: BoxDecoration(
              color: const Color.fromARGB(170, 158, 158, 158),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_month, color: Colors.white, size: 20),
                  Text(
                    'تاريخ المناسبة: 01-12-2025',
                    style: AppTextStylesManeger.font10WhiteRegular,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
