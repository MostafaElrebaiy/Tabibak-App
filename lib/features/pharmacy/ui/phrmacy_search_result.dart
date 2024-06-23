import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/widgets/custom_list_tile_widget.dart';
import 'package:tabibk/features/pharmacy/data/model/search_pharmacy/search_pharmacy_response.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_search_cubit/pharmacy_cubit.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_search_cubit/pharmacy_state.dart';

import '../../../../core/helper/app_assets.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/build_custom_app_bar.dart';

class PharmacySearchResult extends StatelessWidget {
  const PharmacySearchResult({super.key});
  // final SearchPharmacyResponse searchPharmacyResponse;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(
        backarrow: true,
        toolbarHeight: 70,
        text1: "Pharmacies",
        style1: AppStyle.f20WhiteW600,
      ),
      body: BlocBuilder<PharmacyCubit, PharmacyState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            success: (pharmacySearchResponse) {
              SearchPharmacyResponse pharmacy =
                  pharmacySearchResponse as SearchPharmacyResponse;
              return Container(
                margin:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                
                child: ListView.builder(
                  itemCount: pharmacy.data?.pharmacies?.length ?? 0,
                  itemBuilder: (_, index) => CustomListTileWidget(
                    distance: pharmacy.data?.pharmacies?[index].distance.toString() ?? "0.0",
                    imageWidget: Image.asset(AppAsset.staticProfileImage),
                    // imageWidget: pharmacy.data?.pharmacies?[index].image == null
                    //     ? Image.asset(AppAsset.staticProfileImage)
                    //     : Image.network(
                    //         pharmacy.data!.pharmacies![index].image! ,
                    //         fit: BoxFit.cover,
                    //       ),
                    title:pharmacy.data?.pharmacies?[index].name ?? "",
                    onTap: () {
                      context.pushNamed(Routes.pharmacyProfile,
                          arguments: pharmacy.data?.pharmacies?[index]
                          );
                    },
                  ),
                ),
              );
            },
            error: (message) => Center(
              child: Text(message),
            ),
          );
        },
      ),
    );
  }
}
