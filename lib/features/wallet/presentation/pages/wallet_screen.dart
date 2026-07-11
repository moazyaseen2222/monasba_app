import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/helpers/extensions.dart';
import 'package:monasba_app/core/routing/routes.dart';
import 'package:monasba_app/core/widgets/app_main_button.dart';
import 'package:monasba_app/features/wallet/presentation/widgets/main_wallet_container.dart';
import 'package:monasba_app/features/wallet/presentation/widgets/wallet_operation_recored.dart';
import 'package:monasba_app/features/wallet/presentation/widgets/wallet_screen_app_bar.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WalletScreenAppBar(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                MainWalletContainer(),
                verticalSpace(20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: AppMainButton(
                    title: 'طلب سحب أرباح',
                    onPressed: () {
                      context.pushNamed(Routes.sendRequestPaymentScreen);
                    },
                  ),
                ),

                verticalSpace(10),
                Expanded(child: WalletOperationRecored()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
