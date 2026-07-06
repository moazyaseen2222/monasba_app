import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(170);

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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
            child: Column(
              children: [
                verticalSpace(8),

                /// Top Row
                Row(
                  children: [
                    /// Left Icons
                    Row(
                      children: [
                        _circleButton(Icons.settings_outlined),
                        horiznetlSpace(12),
                        _circleButton(Icons.wallet_outlined),
                        horiznetlSpace(12),
                        _circleButton(Icons.notifications_none),
                      ],
                    ),

                    const Spacer(),

                    /// User Info
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "أهلاً وسهلاً بعودتك",
                          style: AppTextStylesManeger.font12WhiteRegular,
                        ),
                        verticalSpace(3),
                        Text(
                          "محمد علي إسماعيل",
                          style: AppTextStylesManeger.font12WhiteBold,
                        ),
                      ],
                    ),

                    horiznetlSpace(12),

                    CircleAvatar(
                      radius: 20.r,
                      backgroundImage: AssetImage(
                        "assets/images/profile_pic.png",
                      ),
                    ),
                  ],
                ),

                verticalSpace(22),

                /// Search
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "...البحث هنا",
                        hintStyle: AppTextStylesManeger.font12WhiteRegular,
                        prefixIcon: Icon(
                          Icons.search_sharp,
                          color: Colors.white,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 8.h),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _circleButton(IconData icon) {
    return Container(
      width: 38.w,
      height: 38.h,
      decoration: const BoxDecoration(
        color: ColorsManeger.secondary,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.white, size: 20),
    );
  }
}
