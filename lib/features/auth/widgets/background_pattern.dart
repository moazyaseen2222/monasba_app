import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monasba_app/core/resources/images_maneger.dart';

class BackgroundPattern extends StatelessWidget {
  const BackgroundPattern({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Wrap(
        spacing: 2,
        runSpacing: 2,
        children: [
          SvgPicture.asset(ImagesManeger.pattern, width: 300.w, height: 230.h),
        ],
      ),
    );
  }
}
