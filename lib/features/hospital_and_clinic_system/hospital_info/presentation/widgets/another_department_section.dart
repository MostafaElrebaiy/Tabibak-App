import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/presentation/widgets/custom_expansion_tile.dart';

class AnotherDepartmentSection extends StatelessWidget {
  const AnotherDepartmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s12),
        border: Border(
          bottom: BorderSide(color: AppColor.gray.withOpacity(0.4), width: 2),
        ),
      ),
      child: const CustomExpansionTile(
          title: AppString.anotherDepartments, isThereSVG: false, children: []),
    );
  }
}