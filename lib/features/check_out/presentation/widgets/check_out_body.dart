import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/check_out/presentation/widgets/build_add_shipping_address.dart';
import 'package:tabibk/features/check_out/presentation/widgets/build_payment_drop_down.dart';
import 'package:tabibk/features/check_out/presentation/widgets/build_shipping_address.dart';
import 'package:tabibk/features/check_out/presentation/widgets/build_purchase_dialog.dart';
import 'package:tabibk/features/check_out/presentation/widgets/purchase_price_and_button_section.dart';

class CheckOutBody extends StatelessWidget {
  const CheckOutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Text(
                AppString.shippingAddress.toUpperCase(),
                style: AppStyle.font14GrayRegular.copyWith(letterSpacing: 2),
              ),
              SizedBox(height: AppSize.s10.h),
              const BuildShippingAddress(),
              SizedBox(height: AppSize.s20.h),
              BuildAddShippingAddress(
                  onPressed: () {
                    context.pushNamed(Routes.addShippingAddressScreen);
                  },
                  text: AppString.addShippingAddress,
                  isShippingAddress: true),
              SizedBox(height: AppSize.s30.h),
              Text(
                AppString.shippingMethod.toUpperCase(),
                style: AppStyle.font14GrayRegular.copyWith(letterSpacing: 2),
              ),
              SizedBox(height: AppSize.s10.h),
              BuildAddShippingAddress(
                onPressed: () {},
                isFree: true,
                text: AppString.pickupAtStore,
              ),
              SizedBox(height: AppSize.s30.h),
              Text(
                AppString.paymentMethod.toUpperCase(),
                style: AppStyle.font14GrayRegular.copyWith(letterSpacing: 2),
              ),
              SizedBox(height: AppSize.s10.h),
              const BuildPaymentDropDown()
            ],
          ),
        ),
        Expanded(
          child: PurchasePriceAndButtonSection(
              onPressed: () => buildPurchaseDialog(context), price: "321\$"),
        ),
      ],
    );
  }
}
