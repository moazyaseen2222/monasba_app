import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';
import 'package:monasba_app/features/addEvent/presentation/controller/add_image_service.dart';
import 'package:monasba_app/features/addEvent/presentation/widgets/add_event_app_bar.dart';

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
              Row(
                children: [
                  Container(
                    height: 42.h,
                    width: 42.w,
                    decoration: BoxDecoration(
                      color: ColorsManeger.secondary,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Icon(Icons.image_outlined, color: Colors.white),
                  ),
                  horiznetlSpace(7),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'صورة المناسبة',
                        style: AppTextStylesManeger.font14BlackRegular,
                      ),
                      Text(
                        'أرفق صورة توضّح طبيعة النشاط بشكل أفضل',
                        style: AppTextStylesManeger.font10GreyRegular,
                      ),
                    ],
                  ),
                ],
              ),
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
                    minHeight: 100.h,
                    maxHeight: 300.h,
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
              Container(
                height: 84.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 213, 212, 212),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 42.h,
                      width: 42.w,
                      decoration: BoxDecoration(
                        color: ColorsManeger.secondary,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Icon(Icons.file_copy, color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0.h, right: 7.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'طباعة المدعويين',
                                style: AppTextStylesManeger.font14BlackRegular,
                              ),
                              horiznetlSpace(110),
                              Container(
                                height: 18.h,
                                width: 63.w,
                                decoration: BoxDecoration(
                                  color: ColorsManeger.secondary,
                                  borderRadius: BorderRadius.circular(18.r),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    Text(
                                      'تفعيل الميزة',
                                      style:
                                          AppTextStylesManeger
                                              .font7WhiteRegular,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          verticalSpace(5),
                          RichText(
                            text: TextSpan(
                              text:
                                  'فعّل اشتراك طباعة المدعوين، واحصل بعد الفرح على نسخة\nمطبوعة من قائمة المدعوين مع جميع تفاصيلهم مقابل ',
                              style: AppTextStylesManeger.font10GreyRegular,
                              children: [
                                TextSpan(
                                  text: '200 ريال',
                                  style:
                                      AppTextStylesManeger.font12BlackRegular,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
