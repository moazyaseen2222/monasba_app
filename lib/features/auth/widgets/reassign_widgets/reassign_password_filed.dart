import 'package:flutter/material.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';

class ReassignPasswordFiled extends StatelessWidget {
  const ReassignPasswordFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE5E5E5)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 90,
            decoration: const BoxDecoration(
              border: Border(left: BorderSide(color: Color(0xffE5E5E5))),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                CircleAvatar(
                  radius: 10,
                  backgroundImage: NetworkImage(
                    'https://flagcdn.com/w40/ps.png',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "(972) 59-726-0592",
                textAlign: TextAlign.right,
                textDirection: TextDirection.ltr,
                style: AppTextStylesManeger.font14BlackBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
