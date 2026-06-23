import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monasba_app/core/utils/app_text_styles.dart';
import 'package:monasba_app/features/on_boarding/models/on_boarding_model.dart';

class OnboardingItemWidget extends StatelessWidget {
  const OnboardingItemWidget({super.key, required this.item});

  final OnBoardingModel item;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(item.imagePath),
        SizedBox(height: 20),
        Text(
          item.title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: 'Almarai',
          ),
        ),
        SizedBox(height: 10),
        Text(
          item.description,
          textAlign: TextAlign.center,
          style: AppTextStyles.font12GreyRegular,
        ),
      ],
    );
  }
}
