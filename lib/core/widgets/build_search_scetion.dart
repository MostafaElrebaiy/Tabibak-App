import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/widgets/custom_widget/app_text_form_field.dart';

class BuildSearchScetion extends StatelessWidget {
  const BuildSearchScetion(
      {super.key,
      required this.searchController,
      required this.validator,
      required this.onFieldSubmitted,
      this.onChanged,
      this.widget = const SizedBox(),
      required this.iconTap, required this.isSearching});
  final TextEditingController searchController;
  final Function(String?) validator;
  final Function(String?)? onFieldSubmitted;
  final Function(String?)? onChanged;
  final Widget widget;
  final VoidCallback iconTap;
  final bool isSearching;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: AppTextFormField(
                controller: searchController,
                hintText: AppString.searchMedicine.tr(context),
                validator: validator,
                onFieldSubmitted: onFieldSubmitted,
                onChanged: onChanged,
                textInputAction: TextInputAction.search,
                suffixIcon: IconButton(
                  onPressed: iconTap,
                  icon: Icon(
                  isSearching?  Icons.close_rounded: Icons.search_rounded ,
                    color: AppColor.black,
                    size: 20.w,
                  ),
                ),
              ),
            ),
          ],
        ),
        widget
      ],
    );
  }
}
