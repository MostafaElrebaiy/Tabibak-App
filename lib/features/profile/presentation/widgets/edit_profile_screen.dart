import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/widgets/main_button._widget.dart';
import 'package:tabibk/features/profile/presentation/widgets/custom_app_text_field.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p10.w),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppTextField(
              hintText: AppString.enterYourName,
              title: AppString.name,
              keyboardType: TextInputType.text,
              validator: (value) {},
            ),
            verticalSpace(20),
            CustomAppTextField(
              hintText: AppString.email,
              title: AppString.email,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {},
            ),
            verticalSpace(20),
            CustomAppTextField(
              hintText: AppString.password,
              title: AppString.password,
              keyboardType: TextInputType.text,
              isObscure: true,
              validator: (value) {},
            ),
            verticalSpace(20),
            CustomAppTextField(
              hintText: AppString.phone,
              title: AppString.phone,
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.done,
              validator: (value) {},
            ),
            verticalSpace(30),
            MainButtonWidget(text: AppString.save, onPressed: () {})
          ],
        ),
      ),
    );
  }
}
