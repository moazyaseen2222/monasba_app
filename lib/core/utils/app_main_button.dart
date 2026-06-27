import 'package:flutter/material.dart';
import 'package:monasba_app/core/utils/app_colors.dart';
import 'package:monasba_app/core/utils/app_text_styles.dart';

class AppMainButton extends StatelessWidget {
  const AppMainButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
  });

  final String title;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 44,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primary,

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child: Text(title, style: AppTextStyles.font14WhiteBold),
      ),
    );
  }
}
