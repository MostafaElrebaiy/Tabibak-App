import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/utilities/custom_error_widget.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/clinic_model/clinic_response.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/clinic/clinic_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/widgets/custom_list_tile_widget.dart';

class ClinicTabBody extends StatelessWidget {
  const ClinicTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p24.w, vertical: AppPadding.p20.h),
      child: BlocBuilder<ClinicCubit, ClinicState>(
        builder: (context, state) {
          return state.when(
              initial: () => Center(
                    child: Text(
                      "Plesae select a department",
                      style: AppStyle.f18BalckW400Mulish,
                    ),
                  ),
              loading: () {
                context.read<ClinicCubit>().getClinics(
                    departmentId: context.read<ClinicCubit>().departmentId ?? 0,
                    lat: context.read<ClinicCubit>().lat,
                    lng: context.read<ClinicCubit>().lng);
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              success: (clinics) {
                ClinicResponse clinic = clinics as ClinicResponse;
                List<Clinics>? clinicList = clinic.data?.clinics;
                return ListView.builder(
                  itemCount: clinic.data?.clinics?.length ?? 0,
                  itemBuilder: (context, index) => CustomListTileWidget(
                    distance: clinicList?[index].distance.toString() ?? "",
                    title: clinicList?[index].name ?? "",
                    imageWidget: clinicList?[index].image == null
                        ? Image.asset(
                            AppAsset.heartattackImage,
                          )
                        : Image.network(
                            clinicList![index].image!,
                          ),
                    onTap: () {
                      context.read<ClinicCubit>().goToMap(
                            lat: clinicList?[index].location?.x as String,
                            lng: clinicList?[index].location?.y as String,
                          );
                    },
                  ),
                );
              },
              error: (error) => CustomErrorWidget(errorMessage: error));
        },
      ),
    );
  }
}
