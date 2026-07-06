import 'package:flutter/material.dart';

import 'package:monasba_app/features/home/presentation/widgets/home_appbar.dart';
import 'package:monasba_app/features/home/presentation/widgets/home_tabbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(appBar: HomeAppBar(), body: HomeTabBar()),
    );
  }
}
