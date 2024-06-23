import 'package:flutter/material.dart';
import 'package:tabibk/core/theme/app_colors.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColor.primaryBlue,
      indent: 20,
      endIndent: 20,
      thickness: 2,
    );
  }
}
