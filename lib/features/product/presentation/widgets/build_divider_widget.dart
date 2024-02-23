import 'package:flutter/material.dart';
import 'package:tabibk/core/theme/app_colors.dart';

class BuildDivider extends StatelessWidget {
  const BuildDivider({super.key});

  @override
  Widget build(BuildContext context) {
  return Divider(
      color: AppColor.black.withOpacity(0.2),
    );
  }
}

