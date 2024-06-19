// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lottie/lottie.dart';
// import 'package:tabibk/core/helper/app_assets.dart';
// import 'package:tabibk/core/helper/app_localization.dart';
// import 'package:tabibk/core/helper/app_string.dart';
// import 'package:tabibk/core/helper/spacing.dart';
// import 'package:tabibk/core/theme/styles.dart';
// import 'package:tabibk/features/pharmacy/data/model/pharmacy_medicine/pharmacy_medicien_response.dart';
// import 'package:tabibk/features/pharmacy/logic/medicine_search_cubit/pharmacy_search_cubit/medicine_state.dart';
// import 'package:tabibk/features/pharmacy/logic/pharmacy_search_cubit/pharmacy_state.dart';
// import 'package:tabibk/features/pharmacy/ui/widgets/custom_list_tile_for_search.dart';

// class SearchResult extends StatelessWidget {
//   const SearchResult(
//       {super.key,
//       required this.pharmacyMedicineResponse,
//       required this.state,
//       });
//   final PharmacyMedicineResponse? pharmacyMedicineResponse;
//   final MedicineState<dynamic> state;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         if (state is PharmacyLoading)
       
//         if (state is PharmacyError)
          
//         if (state is PharmacySuccess)
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.4,
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   verticalSpace(20),
//                   CustomListTileForSearch(
//                       title:
//                           pharmacyMedicineResponse?.data?.name ?? " ",
//                       details:
//                           pharmacyMedicineResponse?.data?.medicine?.details ??
//                               " "),
//                   verticalSpace(10),
//                   ListView.separated(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount:
//                           pharmacyMedicineResponse?.data?.pharmacies?.length ?? 0,
//                       separatorBuilder: (context, index) => verticalSpace(10),
//                       itemBuilder: (context, index) => GestureDetector(
//                             onTap: () {
//                               // locationService.goToMap(
//                               //     pharmacySearchResponse?.data?.pharmacies?[index].location?.x != null
//                               //       ? double.parse(pharmacySearchResponse?.data?.pharmacies?[index].location?.x ?? "")
//                               //       : 0.0,
//                               //     pharmacySearchResponse?.data?.pharmacies?[index].location?.y != null ?
//                               //      double.parse(pharmacySearchResponse?.data?.pharmacies?[index].location?.y ?? "") : 0.0,
                                    
//                               //     );
                            
//                             },
//                             child: CustomListTileForSearch(
//                               title: pharmacyMedicineResponse
//                                       ?.data?.pharmacies?[index].name ??
//                                   " ",
//                               destance: pharmacyMedicineResponse
//                                       ?.data?.pharmacies?[index].distance
//                                       .toString() ??
//                                   " ",
//                               details: pharmacyMedicineResponse
//                                       ?.data?.pharmacies?[index].details ??
//                                   " ",
//                               thereDistance: true,
//                             ),
//                           )),
//                 ],
//               ),
//             ),
//           ),
     
//       ],
//     );
//   }
// }
