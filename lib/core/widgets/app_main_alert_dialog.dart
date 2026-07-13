import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/helpers/extensions.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';
import 'package:monasba_app/core/resources/strings_maneger.dart';
import 'package:monasba_app/core/routing/routes.dart';

class AppMainAlertDialog extends StatelessWidget {
  const AppMainAlertDialog({
    super.key,
    required this.title,
    required this.description,
    required this.onPressed,
  });

  final String title;
  final String description;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,

      titleTextStyle: AppTextStylesManeger.font16BlackRegular,
      title: Center(child: Text(title)),
      content: Text(
        textAlign: TextAlign.center,
        description,

        style: AppTextStylesManeger.font14GreyRegular,
      ),
      actions: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  fixedSize: Size(125.w, 42.h),
                  backgroundColor: ColorsManeger.primary,
                ),
                onPressed: () {
                  onPressed;
                },

                child: Text(
                  StringsManeger.confirm,
                  style: AppTextStylesManeger.font14WhiteBold,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  fixedSize: Size(125.w, 42.h),
                  backgroundColor: const Color.fromARGB(188, 239, 198, 203),
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
  }
}
