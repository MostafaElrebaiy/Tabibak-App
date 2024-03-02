import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/widgets/main_button._widget.dart';
import 'package:tabibk/core/widgets/build_custom_app_bar.dart';
import 'package:tabibk/features/check_out/presentation/widgets/shipping_address_text_field.dart';

class AddShippingAddressScreen extends StatelessWidget {
  const AddShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(text: AppString.addShippingAddress),
      body: SingleChildScrollView(
        // ToDO:Solve The problem of SingleChildScrollView
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppPadding.p16.w, vertical: AppPadding.p30.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(mainAxisSize: MainAxisSize.min, children: [
                Row(
                  children: [
                    const Expanded(
                        child: ShippingAddressTextField(
                            hintText: AppString.firstName)),
                    SizedBox(width: AppSize.s20.w),
                    const Expanded(
                        child: ShippingAddressTextField(
                            hintText: AppString.lastName)),
                  ],
                ),
                SizedBox(height: AppSize.s30.h),
                const ShippingAddressTextField(
                  hintText: AppString.address,
                ),
                SizedBox(height: AppSize.s30.h),
                const ShippingAddressTextField(
                  hintText: AppString.city,
                ),
                SizedBox(height: AppSize.s30.h),
                Row(
                  children: [
                    const Expanded(
                        child: ShippingAddressTextField(
                      hintText: AppString.state,
                    )),
                    SizedBox(width: AppSize.s20.w),
                    const Expanded(
                        child: ShippingAddressTextField(
                            hintText: AppString.zipCode, isNum: true)),
                  ],
                ),
                SizedBox(height: AppSize.s30.h),
                const ShippingAddressTextField(
                    hintText: AppString.phoneNumber, isLast: true, isNum: true),
              ]),
              MainButtonWidget(
                  text: AppString.addNow,
                  onPressed: () {
                    context.pop();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:tabibk/core/helper/app_string.dart';
// import 'package:tabibk/core/helper/extensions.dart';
// import 'package:tabibk/core/helper/value_manager.dart';
// import 'package:tabibk/core/widgets/main_button._widget.dart';
// import 'package:tabibk/features/check_out/data/address_model.dart';
// import 'package:tabibk/features/check_out/presentation/widgets/build_check_out_app_bar.dart';
// import 'package:tabibk/features/check_out/presentation/widgets/shipping_address_text_field.dart';

// class AddShippingAddressScreen extends StatefulWidget {
//   const AddShippingAddressScreen({super.key});

//   @override
//   State<AddShippingAddressScreen> createState() =>
//       _AddShippingAddressScreenState();
// }

// class _AddShippingAddressScreenState extends State<AddShippingAddressScreen> {
//   final TextEditingController firstNameController = TextEditingController();

//   final TextEditingController lastNameController = TextEditingController();

//   final TextEditingController addressController = TextEditingController();

//   final TextEditingController cityController = TextEditingController();

//   final TextEditingController stateController = TextEditingController();

//   final TextEditingController zipCodeController = TextEditingController();

//   final TextEditingController phoneNumberController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildCheckOutAppBar(text: AppString.addShippingAddress),
//       body: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         child: Padding(
//           padding: EdgeInsets.symmetric(
//               horizontal: AppPadding.p16.w, vertical: AppPadding.p30.h),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(mainAxisSize: MainAxisSize.min, children: [
//                 Row(
//                   children: [
//                     Expanded(
//                         child: ShippingAddressTextField(
//                             textEditingController: firstNameController,
//                             hintText: AppString.firstName)),
//                     SizedBox(width: AppSize.s20.w),
//                     Expanded(
//                         child: ShippingAddressTextField(
//                             textEditingController: lastNameController,
//                             hintText: AppString.lastName)),
//                   ],
//                 ),
//                 SizedBox(height: AppSize.s30.h),
//                 ShippingAddressTextField(
//                     hintText: AppString.address,
//                     textEditingController: addressController),
//                 SizedBox(height: AppSize.s30.h),
//                 ShippingAddressTextField(
//                     hintText: AppString.city,
//                     textEditingController: cityController),
//                 SizedBox(height: AppSize.s30.h),
//                 Row(
//                   children: [
//                     Expanded(
//                         child: ShippingAddressTextField(
//                       hintText: AppString.state,
//                       textEditingController: stateController,
//                     )),
//                     SizedBox(width: AppSize.s20.w),
//                     Expanded(
//                         child: ShippingAddressTextField(
//                             textEditingController: zipCodeController,
//                             hintText: AppString.zipCode,
//                             isNum: true)),
//                   ],
//                 ),
//                 SizedBox(height: AppSize.s30.h),
//                 ShippingAddressTextField(
//                     textEditingController: phoneNumberController,
//                     hintText: AppString.phoneNumber,
//                     isLast: true,
//                     isNum: true),
//               ]),
//               MainButtonWidget(
//                   text: AppString.addNow,
//                   onPressed: () {
//                     if (firstNameController.text.isNotEmpty &&
//                         lastNameController.text.isNotEmpty &&
//                         addressController.text.isNotEmpty &&
//                         cityController.text.isNotEmpty &&
//                         phoneNumberController.text.isNotEmpty &&
//                         stateController.text.isNotEmpty){
//                       addresses.add(AddressModel(
//                           firstName: firstNameController.text,
//                           lastName: lastNameController.text,
//                           address: addressController.text,
//                           city: cityController.text,
//                           state: stateController.text,
//                           zipCode: zipCodeController.text.toString(),
//                           phoneNumber: phoneNumberController.text.toString()));
//                       firstNameController.clear();
//                       lastNameController.clear();
//                       addressController.clear();
//                       cityController.clear();
//                       stateController.clear();
//                       phoneNumberController.clear();

//                     context.pop();
//                     print(addresses[0]);
//                     }
//                   }),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     firstNameController.dispose();
//     lastNameController.dispose();
//     addressController.dispose();
//     cityController.dispose();
//     stateController.dispose();
//     zipCodeController.dispose();
//     phoneNumberController.dispose();
//     super.dispose();
//   }
// }

// List<AddressModel> addresses = [];
