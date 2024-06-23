import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/view/widgets/custom_expansion_tile.dart';
import 'package:tabibk/features/product/view/widgets/build_divider_widget.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTile(
      title: 'details'.tr(context),
      isThereSVG: false,
      children: [
        const BuildDivider(),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: 20.w,
          ),
          child: Row(
            children: [
              Flexible(
                child: Text(
                  text,
                  style: AppStyle.f16BlackW700Mulish,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
