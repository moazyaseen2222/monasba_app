import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';

class MainWalletContainer extends StatelessWidget {
  const MainWalletContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 180.h,
        width: 343.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: const Color.fromARGB(255, 233, 235, 236),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 13.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'الرصيد المتوفر',
                          style: AppTextStylesManeger.font12GreyRegular,
                        ),
                        Row(
                          children: [
                            Text(
                              '5,200',
                              style: AppTextStylesManeger.font36GreyRegular,
                            ),
                            horiznetlSpace(7.w),
                            SvgPicture.asset('assets/images/riyal.svg'),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Spacer(),

                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Container(
                      height: 42.h,
                      width: 42.w,
                      decoration: BoxDecoration(
                        color: ColorsManeger.secondary,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Icon(Icons.wallet_outlined, color: Colors.white),
                    ),
                  ),
                ],
              ),
              verticalSpace(10),
              Divider(
                endIndent: 30.w,
                indent: 30.w,
                color: Color.fromARGB(53, 139, 162, 224),
              ),
              verticalSpace(10),
              Row(
                children: [
                  Text(
                    'الرصيد المعلق',
                    style: AppTextStylesManeger.font12GreyRegular,
                  ),
                  Spacer(),
                  Text('2,000', style: AppTextStylesManeger.font14BlackBold),
                  SvgPicture.asset('assets/images/riyal.svg'),
                ],
              ),
              verticalSpace(10),
              Row(
                children: [
                  Text(
                    'الرصيد القابل للسحب',
                    style: AppTextStylesManeger.font12GreyRegular,
                  ),
                  Spacer(),
                  Text('3,200', style: AppTextStylesManeger.font14BlackBold),
                  SvgPicture.asset('assets/images/riyal.svg'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
