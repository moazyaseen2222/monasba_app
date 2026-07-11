import 'package:flutter/material.dart';
import 'package:monasba_app/core/routing/routes.dart';
import 'package:monasba_app/features/addBankAccount/presentation/pages/add_bank_aacount_screen.dart';
import 'package:monasba_app/features/addBankAccount/presentation/pages/ask_add_bank_account_screen.dart';
import 'package:monasba_app/features/addEvent/presentation/pages/add_event_screen.dart';
import 'package:monasba_app/features/auth/presentation/pages/login_screen.dart';
import 'package:monasba_app/features/auth/presentation/pages/otp_screen.dart';
import 'package:monasba_app/features/auth/presentation/pages/reassign_password_screen.dart';
import 'package:monasba_app/features/auth/presentation/pages/reassign_success_screen.dart';
import 'package:monasba_app/features/auth/presentation/pages/sign_up_screen.dart';
import 'package:monasba_app/features/auth/presentation/pages/signup_success_screen.dart';
import 'package:monasba_app/features/auth/presentation/pages/update_password_screen.dart';
import 'package:monasba_app/features/home/presentation/pages/home_screen.dart';
import 'package:monasba_app/features/home/presentation/pages/notification_screen.dart';
import 'package:monasba_app/features/on_boarding/presentation/pages/on_boarding_screen.dart';
import 'package:monasba_app/features/on_boarding/presentation/pages/splach_screen.dart';
import 'package:monasba_app/features/wallet/presentation/pages/send_request_payment_screen.dart';
import 'package:monasba_app/features/wallet/presentation/pages/wallet_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splachScreen:
        return MaterialPageRoute(builder: (_) => const SplachScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.reassignPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ReassignPasswordScreen(),
        );

      case Routes.otpScreen:
        return MaterialPageRoute(builder: (_) => const OtpScreen());

      case Routes.updatePasswordScreen:
        return MaterialPageRoute(builder: (_) => UpdatePasswordScreen());

      case Routes.reassignPasswordSuccessScreen:
        return MaterialPageRoute(builder: (_) => const ReassignSuccessScreen());

      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => SignUpScreen());

      case Routes.signUpSuccessScreen:
        return MaterialPageRoute(builder: (_) => const SignUpSuccessScreen());

      case Routes.askAddBankAccount:
        return MaterialPageRoute(builder: (_) => const AskAddBankAccount());

      case Routes.addBankAccountScreen:
        return MaterialPageRoute(builder: (_) => AddBankAccountScreen());

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.walletScreen:
        return MaterialPageRoute(builder: (_) => const WalletScreen());

      case Routes.sendRequestPaymentScreen:
        return MaterialPageRoute(builder: (_) => SendRequestPaymentScreen());

      case Routes.notificationScreen:
        return MaterialPageRoute(builder: (_) => NotificationScreen());

      case Routes.addEventScreen:
        return MaterialPageRoute(builder: (_) => AddEventScreen());

      ///-----------------------------------------------------------------------------
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('الصفحة غير موجودة: ${settings.name}'),
                ),
              ),
        );
    }
  }
}
