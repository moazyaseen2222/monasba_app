import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/helpers/app_regex.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/widgets/app_main_text_field.dart';

class FormCard extends StatefulWidget {
  const FormCard({super.key});

  @override
  State<FormCard> createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {
  TextEditingController eventNameController = TextEditingController();

  TextEditingController eventNotesController = TextEditingController();

  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  @override
  void dispose() {
    dateController.dispose();
    timeController.dispose();

    super.dispose();
  }

  Future<void> selectDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,

      initialDate: DateTime.now(),

      firstDate: DateTime(2020),

      lastDate: DateTime(2030),
    );

    if (pickedDate != null) {
      setState(() {
        dateController.text =
            "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      });
    }
  }

  Future<void> selectTime() async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,

      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        timeController.text = pickedTime.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(8.r),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            blurRadius: 8.r,
            offset: const Offset(0, 2),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,

        children: [
          Text(
            "تفاصيل المناسبة",
            style: AppTextStylesManeger.font14BlackRegular,
          ),

          SizedBox(height: 5),

          Text(
            "قم بإضافة اسم المناسبة وتاريخها وموقع إقامتها",
            style: AppTextStylesManeger.font10GreyRegular,
          ),

          SizedBox(height: 20),

          _label("اسم المناسبة"),

          AppTextFormField(
            // hintText: 'مثال: حفل زواج أحمد وفاطمة',
            controller: eventNameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '';
              } else if (!AppRegex.isPasswordValid(value)) {
                return '';
              }
              return null;
            },
            obscureText: false,
            onChanged: (value) {},
          ),

          SizedBox(height: 15),
          _label('التاريخ'),

          TextFormField(
            controller: dateController,

            readOnly: true,

            onTap: () {
              selectDate();
            },

            textAlign: TextAlign.right,

            decoration: InputDecoration(
              hintText: "mm/dd/yyyy",

              hintStyle: TextStyle(color: Colors.grey, fontSize: 13),

              suffixIcon: Icon(
                Icons.calendar_month_outlined,
                color: Color(0xff002B50),
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),

                borderSide: BorderSide(color: Colors.grey.shade300),
              ),

              contentPadding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
            ),
          ),

          verticalSpace(10),
          _label('الوقت'),

          TextFormField(
            controller: timeController,

            readOnly: true,

            onTap: () {
              selectTime();
            },

            textAlign: TextAlign.right,

            decoration: InputDecoration(
              hintText: "--:--",

              hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),

              suffixIcon: const Icon(
                Icons.access_time_outlined,
                color: Color(0xff002B50),
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),

                borderSide: BorderSide(color: Colors.grey.shade300),
              ),

              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
            ),
          ),

          // _dateTimeRow(),
          SizedBox(height: 15),

          _label("الموقع وتفاصيله"),

          AppTextFormField(
            maxLines: 5,
            controller: eventNameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '';
              } else if (!AppRegex.isPasswordValid(value)) {
                return '';
              }
              return null;
            },
            obscureText: false,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}

Widget _label(String text) {
  return Align(
    alignment: Alignment.centerRight,
    child: Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Text(text, style: AppTextStylesManeger.font12BlackRegular),
    ),
  );
}
