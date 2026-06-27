import 'package:flutter/material.dart';
import 'package:monasba_app/core/utils/app_text_styles.dart';

class AppTextFiled extends StatelessWidget {
  const AppTextFiled({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE5E5E5)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyles.font14BlackBold,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
