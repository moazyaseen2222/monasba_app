import 'package:flutter/material.dart';

class PasswordFiled extends StatefulWidget {
  const PasswordFiled({super.key});

  @override
  State<PasswordFiled> createState() => _PasswordFiledState();
}

bool obscureText = true;

class _PasswordFiledState extends State<PasswordFiled> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
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
        ),
      ],
    );
  }
}
