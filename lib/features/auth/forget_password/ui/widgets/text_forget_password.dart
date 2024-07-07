import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/app_localization.dart';

import '../../../../../core/theme/styles.dart';

class TextForgetPassword extends StatelessWidget {
  const TextForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Align(
          alignment: Localizations.localeOf(context).languageCode == 'ar'
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: Text("retriveForgetPassword".tr(context), style: AppStyle.font24BlackBold)),
      Align(
        child: Text(
            "enterEmailForgetPassword".tr(context),
            style: AppStyle.font14GrayRegular),
      )
    ]);
  }
}
