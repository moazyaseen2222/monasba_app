import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.title,

    required this.controller,
    this.isObsecureText,
    this.suffixIconOnTap,
    required this.validator,
    this.initialValue,
    required bool obscureText,
    this.keyboardType,
    this.isFilled,
    this.fillColor,
    this.suffixIcon,
    this.labelStyle,
    this.hintText,
    required Null Function(dynamic value) onChanged,
    this.hintStyle,
    this.minLines,
    this.maxLines,
  });

  final String? title;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final bool? isObsecureText;
  final VoidCallback? suffixIconOnTap;
  final String? initialValue;
  final bool? isFilled;
  final Color? fillColor;
  final TextStyle? labelStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final int? minLines;
  final int? maxLines;

  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minLines,
      maxLines: maxLines,

      initialValue: initialValue,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: isObsecureText ?? false,
      controller: controller,
      keyboardType: keyboardType,

      decoration: InputDecoration(
        labelStyle: labelStyle ?? AppTextStylesManeger.font13GreyRegular,
        suffixIcon: suffixIcon,
        hintStyle: hintStyle ?? AppTextStylesManeger.font12GreyRegular,

        // suffixIcon: IconButton(
        //   onPressed: suffixIconOnTap,
        //   icon: Icon(suffixIcon),
        // ),
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Colors.grey, width: 0.5),
        ),
        fillColor: fillColor,
        filled: isFilled ?? false,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(width: 0.5),
        ),
      ),
      validator: (value) {
        return validator(value);
      },
    );
  }
}
