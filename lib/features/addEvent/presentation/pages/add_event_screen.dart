import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';
import 'package:monasba_app/core/resources/strings_maneger.dart';
import 'package:monasba_app/core/widgets/app_main_button.dart';
import 'package:monasba_app/features/addEvent/presentation/controller/add_image_service.dart';
import 'package:monasba_app/features/addEvent/presentation/widgets/add_event_app_bar.dart';
import 'package:monasba_app/features/addEvent/presentation/widgets/image_head.dart';
import 'package:monasba_app/features/addEvent/presentation/widgets/number_of_vistores.dart';
import 'package:monasba_app/features/addEvent/presentation/widgets/paint_visteeros.dart';

class AddEventScreen extends StatefulWidget {
  const AddEventScreen({super.key});

  @override
  State<AddEventScreen> createState() => _AddEventScreenState();
}

File? selectedImage;

Future<void> uploadImage() async {}

class _AddEventScreenState extends State<AddEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AddEventAppBar(),

      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: Column(
            children: [
              ImageHead(),
              verticalSpace(20),
              // Upload Box
              DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(12.r),
                dashPattern: const [5, 5],
                color: Colors.grey,
                child: Container(
                  width: double.infinity,
                  // height: 500,
                  constraints: BoxConstraints(
                    // minHeight: 50.h,
                    maxHeight: 180.h,
                  ),
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color(0xffFFF5E3),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child:
                              selectedImage == null
                                  ? IconButton(
                                    icon: Icon(Icons.upload),
                                    onPressed: () async {
                                      final image =
                                          await ImagePickerService()
                                              .pickImage();

                                      if (image != null) {
                                        setState(() {
                                          selectedImage = image;
                                        });
                                      }
                                    },

                                    color: ColorsManeger.secondary,
                                  )
                                  : ClipRRect(
                                    borderRadius: BorderRadius.circular(12.r),
                                    child: Image.file(
                                      selectedImage!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpace(10),
              Paintvisteros(),
              verticalSpace(10),
              NumberOfVistores(),
              verticalSpace(50),
              AppMainButton(title: StringsManeger.next, onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
