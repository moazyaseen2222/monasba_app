import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';
import 'package:monasba_app/core/routing/app_router.dart';
import 'package:monasba_app/features/addBankAccount/presentation/pages/ask_add_bank_account_screen.dart';

import 'package:monasba_app/features/on_boarding/presentation/pages/splach_screen.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: ColorsManeger.white,
          appBarTheme: AppBarTheme(backgroundColor: ColorsManeger.white),
        ),
        home: const AskAddBankAccount(),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
