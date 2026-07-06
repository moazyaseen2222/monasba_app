import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';
import 'package:monasba_app/features/auth/presentation/pages/login_screen.dart';
import 'package:monasba_app/features/auth/presentation/pages/sign_up_screen.dart';
import 'package:monasba_app/features/home/presentation/widgets/current_events_screen.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: TabBar(
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                color: ColorsManeger.secondary,
                borderRadius: BorderRadius.circular(8.r),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black87,

              labelStyle: AppTextStylesManeger.font12Bold,
              unselectedLabelStyle: AppTextStylesManeger.font12BlackRegular,
              tabs: const [
                Tab(text: "مناسبات سابقة"),
                Tab(text: "المناسبات الحالية"),
              ],
            ),
          ),
          const Expanded(
            child: TabBarView(
              children: [CurrentEventsScreen(), CurrentEventsScreen()],
              // children: [PreviousEventsScreen(), CurrentEventsScreen()],
            ),
          ),
        ],
      ),
    );
  }
}
