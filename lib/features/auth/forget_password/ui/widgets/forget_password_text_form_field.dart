import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/widgets/custom_widget/app_text_form_field.dart';
import '../../logic/forget_password_cubit.dart';

class ForgetPasswordTextFormFeild extends StatelessWidget {
  const ForgetPasswordTextFormFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ForgetCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid Email';
                }
              },
              controller: context.read<ForgetCubit>().emailController),
          verticalSpace(25.h),
        ],
      ),
    );
  }
}
