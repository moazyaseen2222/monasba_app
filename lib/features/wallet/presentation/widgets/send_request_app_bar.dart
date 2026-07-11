import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/helpers/extensions.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';

class SendRequestAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SendRequestAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(118);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      toolbarHeight: 170.h,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: ColorsManeger.primary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24.r),
            bottomRight: Radius.circular(24.r),
          ),
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  /// User Info
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.0.h),
                    child: Row(
                      children: [
                        Container(
                          height: 42.h,
                          width: 42.w,
                          decoration: BoxDecoration(
                            color: ColorsManeger.secondary,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Icon(Icons.info_outline, color: Colors.white),
                        ),
                        horiznetlSpace(130),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "طلب سحب",
                              style: AppTextStylesManeger.font16WhiteRegular,
                            ),
                            verticalSpace(3),
                            Text(
                              "أدخل قيمة السحب وتابع العملية",
                              style: AppTextStylesManeger.font10WhiteBold,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(Icons.arrow_forward, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
