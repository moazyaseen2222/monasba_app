import 'package:flutter/material.dart';
import 'package:monasba_app/features/auth/presentation/reassign_password_screen.dart';
import 'package:monasba_app/features/auth/presentation/reassign_success_screen.dart';
import 'package:monasba_app/features/auth/presentation/sign_up_screen.dart';
import 'package:monasba_app/features/auth/presentation/update_password_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SignUpScreen());
  }
}
