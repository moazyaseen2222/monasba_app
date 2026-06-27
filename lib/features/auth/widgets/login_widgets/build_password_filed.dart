import 'package:flutter/material.dart';

class LoginPasswordFiled extends StatefulWidget {
  const LoginPasswordFiled({super.key});

  @override
  State<LoginPasswordFiled> createState() => _LoginPasswordFiledState();
}

class _LoginPasswordFiledState extends State<LoginPasswordFiled> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE5E5E5)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        obscureText: obscureText,
        textAlign: TextAlign.right,

        decoration: InputDecoration(
          border: InputBorder.none,

          hintText: "********",
          hintTextDirection: TextDirection.ltr,
          suffixIcon: IconButton(
            icon: Icon(
              obscureText
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
          ),
        ),
      ),
    );
  }
}
