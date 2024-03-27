import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';

class BuildProductIconButton extends StatelessWidget {
  const BuildProductIconButton(
      {super.key, required this.onPressed,  this.isAdd=true});
  final VoidCallback onPressed;
  final bool isAdd;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      tooltip: isAdd ? 'Add' : 'Remove',
      style: IconButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onPressed,
      icon: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border:
                Border.all(width: AppSize.s1, color: AppColor.addIconColor)),
        child: Icon(
          isAdd ? Icons.add : Icons.remove,
          color: AppColor.black.withOpacity(0.6),
        ),
      ),
    );
  }
}

