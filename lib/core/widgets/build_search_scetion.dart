import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/widgets/custom_widget/app_text_form_field.dart';

class BuildSearchScetion extends StatelessWidget {
  const BuildSearchScetion(
      {super.key,
      required this.searchController,
      required this.validator,
      required this.onFieldSubmitted});
  final TextEditingController searchController;
  final Function(String?) validator;
  final Function(String?)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              padding: EdgeInsets.only(
                  left: AppPadding.p16.w,
                  top: AppPadding.p10.h,
                  bottom: AppPadding.p10.h),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius:
                      BorderRadius.all(Radius.circular(AppSize.s250.w)),
                  border: Border.all(width: 2, color: AppColor.colorF5F5F5)),
              child: AppTextFormField(
                controller: searchController,
                hintText: "searchDepartment".tr(context),
                validator: validator,
                onFieldSubmitted: onFieldSubmitted,
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColor.black.withOpacity(0.4),
                  size: AppSize.s24.w,
                ),
              )),
        ),

        Row(
          children: [
            SizedBox(
              width: AppSize.s10.w,
            ),
            Text(
              "searchDepartment".tr(context),
              style: AppStyle.f14BlackW700
                  .copyWith(color: AppColor.black.withOpacity(0.4)),
            )
          ],
        ),
        // Container(
        //   // padding: EdgeInsets.all(AppPadding.p8.w),
        //   height: AppSize.s38.h,
        //   width: AppSize.s38.w,
        //   decoration: const BoxDecoration(
        //       color: AppColor.colorF5F5F5, shape: BoxShape.circle),
        //   child: IconButton(
        //     icon: Image.asset(AppAsset.hospitalSearchFilter),
        //     onPressed: () {},
        //   ),
        // )
      ],
    );
  }
}
