import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WalletOperationRecored extends StatelessWidget {
  const WalletOperationRecored({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          Text('سجل العمليات'),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('إهداء مقدم برعاية الحكومة'),
                              Text('29 جمادي الأولى 1447'),
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
