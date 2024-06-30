import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/pharmacy_screens/search_medicine/ui/widgets/custom_list_tile_for_search.dart';
import 'package:tabibk/features/pharmacy_screens/search_phamacy/data/model/arg_pharmacy/search_result_model.dart';
import 'package:tabibk/features/pharmacy_screens/search_medicine/data/model/search_medicine_response.dart';
import 'package:tabibk/features/pharmacy_screens/search_medicine/logic/medicine_cubit.dart';
import 'package:tabibk/features/pharmacy_screens/search_medicine/logic/medicine_state.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/build_search_scetion.dart';

class SearchForMedicine extends StatelessWidget {
  const SearchForMedicine({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicineCubit, MedicineState>(
      builder: (context, state) {
        MedicineCubit medicineCubit = context.read<MedicineCubit>();

        return BuildSearchScetion(
          searchController: medicineCubit.searchController,
          validator: (s) {},
          onChanged: (medicineName) {
            medicineCubit.searchForMedicien(
              medicineName: medicineCubit.searchController.text,
            );
          },
          onFieldSubmitted: (medicineName) {
            medicineCubit.searchForMedicien(
              medicineName: medicineCubit.searchController.text,
            );
          },
          widget: state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => Column(
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
            success: (medicineResponse) {
              SearchMedicineResponse medicine =
                  medicineResponse as SearchMedicineResponse;
              if (medicine.data?.isEmpty ?? true) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    verticalSpace(20),
                    Text(
                      textAlign: TextAlign.center,
                      AppString.noMedicineFound.tr(context),
                      style: AppStyle.font16blackRegular,
                    ),
                  ],
                );
              }
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: SingleChildScrollView(
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: medicine.data?.length ?? 0,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              context.pushNamed(Routes.SearhPharmacyView,
                                  arguments: ArgResultPharmacy(
                                    medicineName:
                                        medicine.data?[index].name ?? " ",
                                    lat: context.read<MedicineCubit>().lat ??
                                        0.0,
                                    lng: context.read<MedicineCubit>().lng ??
                                        0.0,
                                  ));
                            },
                            child: Column(
                              children: [
                                verticalSpace(10),
                                CustomListTileForSearch(
                                  title: medicine.data?[index].name ?? " ",
                                  details: medicine.data?[index].details ?? " ",
                                  price:
                                      medicine.data?[index].price.toString() ??
                                          " ",
                                  image: medicine.data?[index].image ?? " ",
                                ),
                              ],
                            ),
                          )),
                ),
              );
            },
            error: (error) => Column(
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
          ),
          iconTap: () => medicineCubit.clearTextFiled(),
          isSearching: medicineCubit.searchController.text.isNotEmpty,
        );
      },
    );
  }
}
