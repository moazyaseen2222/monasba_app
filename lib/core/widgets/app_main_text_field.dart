import 'package:flutter/material.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/features/auth/widgets/password_filed.dart';

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

  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        fillColor: fillColor,
        filled: isFilled ?? false,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
      ),
      validator: (value) {
        return validator(value);
      },
    );
  }
}
