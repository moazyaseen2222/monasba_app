import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/helpers/extensions.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';

class AddEventAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AddEventAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(100);

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                /// User Info
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "مناسبة جديدة",
                            style: AppTextStylesManeger.font16WhiteRegular,
                          ),
                          verticalSpace(3),
                          Text(
                            "أضف تفاصيل مناسبتك الخاصة",
                            style: AppTextStylesManeger.font10WhiteBold,
                          ),
                        ],
                      ),
                    ),
                  ],
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
    );
  }
}
