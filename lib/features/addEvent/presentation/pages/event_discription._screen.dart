import 'package:flutter/material.dart';

import 'package:monasba_app/core/widgets/app_main_alert_dialog.dart';
import 'package:monasba_app/core/widgets/app_main_button.dart';
import 'package:monasba_app/features/addEvent/presentation/widgets/add_event_app_bar.dart';
import 'package:monasba_app/features/addEvent/presentation/widgets/form_card.dart';

class AddEventDiscriptionScreen extends StatelessWidget {
  const AddEventDiscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AddEventAppBar(),
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(children: [FormCard()]),
                ),
              ),

              AppMainButton(
                title: 'تأكيد الاضافة',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AppMainAlertDialog(
                        title: 'تأكيد إنشاء المناسبة',
                        description:
                            'قبل المتابعة، يرجى التأكد من صحة جميع تفاصيل المناسبة. بعد الضغط على "تأكيد"، سيتم تحويلك إلى بوابة الدفع لإتمام رسوم تفعيل المناسبة.',
                        onPressed: () {},
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
