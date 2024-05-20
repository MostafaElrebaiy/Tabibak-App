import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/pharmacy/data/model/search_pharmacy_response.dart';
import 'package:tabibk/features/pharmacy/logic/cubit/pharmacy_state.dart';
import 'package:tabibk/features/pharmacy/ui/widgets/custom_list_tile_for_search.dart';

class SearchResult extends StatelessWidget {
  const SearchResult(
      {super.key,
      required this.pharmacySearchResponse,
      required this.searchController,
      required this.state});
  final SearchPharmacyResponse? pharmacySearchResponse;
  final TextEditingController searchController;
  final PharmacyState<dynamic> state;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (state is PharmacyLoading)
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              verticalSpace(20),
              Lottie.asset(
                AppAsset.loadingJson4,
                height: 100.h,
                fit: BoxFit.fill,
              ),
            ],
          ),
        if (state is PharmacyError)
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              verticalSpace(20),
              Text(
                textAlign: TextAlign.center,
                AppString.noMedicineFound.tr(context),
                style: AppStyle.font16blackRegular,
              ),
            ],
          ),
        if (state is PharmacySuccess)
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  verticalSpace(20),
                  CustomListTileForSearch(
                      title:
                          pharmacySearchResponse?.data?.medicine?.name ?? " ",
                      details:
                          pharmacySearchResponse?.data?.medicine?.details ??
                              " "),
                  verticalSpace(10),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount:
                          pharmacySearchResponse?.data?.pharmacies?.length ?? 0,
                      separatorBuilder: (context, index) => verticalSpace(10),
                      itemBuilder: (context, index) => CustomListTileForSearch(
                            title: pharmacySearchResponse
                                    ?.data?.pharmacies?[index].name ??
                                " ",
                            destance: pharmacySearchResponse
                                    ?.data?.pharmacies?[index].distance
                                    .toString() ??
                                " ",
                            details: pharmacySearchResponse
                                    ?.data?.pharmacies?[index].details ??
                                " ",
                            thereDistance: true,
                          )),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
