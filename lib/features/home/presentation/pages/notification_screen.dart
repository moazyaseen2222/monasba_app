import 'package:flutter/material.dart';
import 'package:monasba_app/core/helpers/app_spacer.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';
import 'package:monasba_app/features/home/presentation/widgets/notification_screen_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NotificationScreenAppBar(),
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              verticalSpace(10),
              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(
                        Icons.notifications,
                        color: ColorsManeger.secondary,
                        size: 30,
                      ),
                      subtitle: Text(
                        'قام أحمد بتقديم إهداء بقيمة 150 ريال إلى مناسبتك(زفاف محمد).',
                        style: AppTextStylesManeger.font12GreyRegular,
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'تم استلام إهداء جديد',
                            style: AppTextStylesManeger.font12BlackRegular,
                          ),
                          Text(
                            'منذ 5 دقائق',
                            style: AppTextStylesManeger.font12GreyRegular,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
