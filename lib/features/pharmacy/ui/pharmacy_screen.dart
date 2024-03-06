import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/value_manager.dart';
import '../../../core/theme/styles.dart';
import '../../../core/widgets/build_custom_app_bar.dart';
import '../../hospital_and_clinic_system/hospital/presentation/widgets/build_hospital_app_bar_action.dart';
import 'widgets/pharmacy_body.dart';

class PharmacyScreen extends StatelessWidget {
  const PharmacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(

        
       backarrow: false, 
       text1: 'Welcome, ',
       style1: AppStyle.font16WhiteSemiBold,
       text2: 'Mostafa',
       style2: AppStyle.f14MAinBlueW700,
      
       actions: [
        BuildHospitalAppBarAction(
          onTap: () {},
          icon: Icon(Icons.shopping_cart_outlined),
          top: -1,
          right: 0,
        ),
      ]),
      body: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p18.w, vertical: AppPadding.p20.h),
      child: PharmacyBody(),
    ),
    );

    
  }
}
