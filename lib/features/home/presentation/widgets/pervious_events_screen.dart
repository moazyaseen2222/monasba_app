import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/widgets/app_main_button.dart';
import 'package:monasba_app/features/home/presentation/widgets/details_monasba_container.dart';
import 'package:monasba_app/features/home/presentation/widgets/monasba_image_contaainer.dart';

class PerviousEventsScreen extends StatelessWidget {
  const PerviousEventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w),

        // Main Event Container
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Container(
                height: 380.h,
                width: 343.w,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 250, 245, 245),

                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children: [
                      // Image with calender:
                      MonasbaImage(),
                      verticalSpace(15),

                      //  Titles
                      Padding(
                        padding: EdgeInsets.only(right: 10.0.w),
                        child: Text(
                          'حفل زواج أحمد وفاطمة',
                          style: AppTextStylesManeger.font14BlackBold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'قاعة الفخامة . الرياض , السعودية',
                            style: AppTextStylesManeger.font10GreyRegular,
                          ),
                          Icon(Icons.location_on),
                        ],
                      ),
                      verticalSpace(20),

                      // Monasba Detailes
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MonasbaDetailesContainer(
                            icon: Icon(Icons.calendar_month_outlined),
                            number: '250',
                            text: 'مدعو',
                          ),
                          MonasbaDetailesContainer(
                            icon: Icon(Icons.wallet_outlined),
                            number: '45k',
                            text: 'ريال',
                          ),
                          MonasbaDetailesContainer(
                            icon: Icon(Icons.person_2_outlined),
                            number: '180',
                            text: 'حضور',
                          ),
                        ],
                      ),
                      verticalSpace(20),
                      AppMainButton(title: 'عرض التفاصيل', onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              height: 400.h,
              width: 343.w,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 245, 245),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    // Image with calender:
                    MonasbaImage(),
                    verticalSpace(15),

                    //  Titles
                    Padding(
                      padding: EdgeInsets.only(right: 10.0.w),
                      child: Text(
                        'حفل زواج أحمد وفاطمة',
                        style: AppTextStylesManeger.font14BlackBold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'قاعة الفخامة . الرياض , السعودية',
                          style: AppTextStylesManeger.font10GreyRegular,
                        ),
                        Icon(Icons.location_on),
                      ],
                    ),
                    verticalSpace(20),

                    // Monasba Detailes
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MonasbaDetailesContainer(
                          icon: Icon(Icons.calendar_month_outlined),
                          number: '250',
                          text: 'مدعو',
                        ),
                        MonasbaDetailesContainer(
                          icon: Icon(Icons.wallet_outlined),
                          number: '45k',
                          text: 'ريال',
                        ),
                        MonasbaDetailesContainer(
                          icon: Icon(Icons.person_2_outlined),
                          number: '180',
                          text: 'حضور',
                        ),
                      ],
                    ),
                    // verticalSpace(50),
                    AppMainButton(title: 'عرض التفاصيل', onPressed: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
