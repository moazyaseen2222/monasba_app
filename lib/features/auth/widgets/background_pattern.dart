import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackgroundPattern extends StatelessWidget {
  const BackgroundPattern({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Wrap(
        spacing: 2,
        runSpacing: 2,
        children: [
          SvgPicture.asset(
            'assets/images/pattern.svg',
            width: 300,
            height: 230,
          ),
        ],
      ),
    );
  }
}
