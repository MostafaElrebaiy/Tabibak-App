import 'package:flutter/material.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/features/check_out/presentation/widgets/purchase_widget.dart';

void buildPurchaseDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: AppColor.shadowColor.withOpacity(0.6),
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, animation, secondaryAnimation) => FadeTransition(
      opacity: animation,
      child: const PurchaseWidget(),
    ),
  );
}
