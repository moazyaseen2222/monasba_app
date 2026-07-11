import 'package:flutter/material.dart';
import 'package:monasba_app/core/helpers/extensions.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';
import 'package:monasba_app/core/routing/routes.dart';

import 'package:monasba_app/features/home/presentation/widgets/home_appbar.dart';
import 'package:monasba_app/features/home/presentation/widgets/home_tabbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: HomeAppBar(),
        body: HomeTabBar(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: ColorsManeger.secondary,

          child: Icon(Icons.add_outlined, color: Colors.white, size: 30),
          onPressed: () => context.pushNamed(Routes.addEventScreen),
        ),
      ),
    );
  }
}
