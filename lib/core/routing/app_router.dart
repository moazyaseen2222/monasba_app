import 'package:flutter/material.dart';
import 'package:monasba_app/core/routing/routes.dart';
import 'package:monasba_app/features/auth/presentation/pages/login_screen.dart';
import 'package:monasba_app/features/auth/presentation/pages/otp_screen.dart';
import 'package:monasba_app/features/auth/presentation/pages/reassign_password_screen.dart';
import 'package:monasba_app/features/auth/presentation/pages/reassign_success_screen.dart';
import 'package:monasba_app/features/auth/presentation/pages/sign_up_screen.dart';
import 'package:monasba_app/features/auth/presentation/pages/signup_success_screen.dart';
import 'package:monasba_app/features/auth/presentation/pages/update_password_screen.dart';
import 'package:monasba_app/features/on_boarding/presentation/pages/on_boarding_screen.dart';
import 'package:monasba_app/features/on_boarding/presentation/pages/splach_screen.dart';

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
