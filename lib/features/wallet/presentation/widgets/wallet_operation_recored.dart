import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';

class WalletOperationRecored extends StatelessWidget {
  const WalletOperationRecored({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'سجل العمليات',
              style: AppTextStylesManeger.font14BlackRegular,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 77.h,
                    width: 343.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: const Color.fromARGB(255, 233, 235, 236),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.done_outlined),
                          horiznetlSpace(5),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'إهداء مقدم برعاية الحكومة',
                                style: AppTextStylesManeger.font12BlackRegular,
                              ),
                              Text(
                                '29 جمادي الأولى 1447',
                                style: AppTextStylesManeger.font10GreyRegular,
                              ),
                            ],
                          ),
                          Spacer(),

                          Text('+ 15,000'),
                          SvgPicture.asset('assets/images/riyal.svg'),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
