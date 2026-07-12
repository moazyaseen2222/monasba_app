import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';

class NumberOfVistores extends StatelessWidget {
  const NumberOfVistores({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: 343.w,
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'عدد المدعوين',
                    style: AppTextStylesManeger.font14BlackRegular,
                  ),
                  Text(
                    'يمكنك تعديل عدد المدعوين لاحقًا من لوحة المناسبة',
                    style: AppTextStylesManeger.font10GreyRegular,
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: 53.h,
                width: 95.w,
                decoration: BoxDecoration(
                  color: ColorsManeger.secondaryLight,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Center(
                  child: Text(
                    '50',
                    style: AppTextStylesManeger.font32SecondaryRegular,
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsManeger.primary,
                  fixedSize: Size(74.w, 43.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),

                onPressed: () {},
                child: Center(child: Icon(Icons.minimize, color: Colors.white)),
              ),
              Container(
                height: 44.h,
                width: 145.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(
                    color: const Color.fromARGB(137, 158, 158, 158),
                  ),
                ),
                child: Center(
                  child: Text(
                    '50',
                    style: AppTextStylesManeger.font16GreyRegular,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsManeger.primary,
                  fixedSize: Size(74.w, 43.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                onPressed: () {},
                child: Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
          verticalSpace(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50.h,
                width: 70.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: Text(
                    '50',
                    style: AppTextStylesManeger.font16GreyRegular,
                  ),
                ),
              ),

              Container(
                height: 50.h,
                width: 70.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: Text(
                    '100',
                    style: AppTextStylesManeger.font16GreyRegular,
                  ),
                ),
              ),

              Container(
                height: 50.h,
                width: 70.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: Text(
                    '200',
                    style: AppTextStylesManeger.font16GreyRegular,
                  ),
                ),
              ),

              Container(
                height: 50.h,
                width: 70.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Colors.grey),
                ),

                child: Center(
                  child: Text(
                    '300',
                    style: AppTextStylesManeger.font16GreyRegular,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
