import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/value_manager.dart';
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
              initial: () => const SizedBox.shrink(),
              loading: () {
                context.read<ClinicCubit>().getClinics(
                    departmentId:
                        context.read<ClinicCubit>().departmentId ?? 0,
                    lat: context.read<ClinicCubit>().lat,
                    lng: context.read<ClinicCubit>().lng);
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              success: (clinics){
                ClinicResponse clinic = clinics as ClinicResponse;
                return  ListView.builder(
                  itemCount:  clinic.data?.clinics?.length ?? 0,
                  itemBuilder: (context, index) => CustomListTileWidget(
                    distance:  clinic.data?.clinics?[index].distance.toString() ??
                            "",
                    isHospital: false,
                    title:  clinic.data?.clinics?[index].name ?? "",
                    image: AppAsset.doctorImage,
                    onTap: () {
                        context.read<ClinicCubit>().goToMap(
                            lat: clinic.data?.clinics?[index].location?.x
                                as String,
                            lng: clinic.data?.clinics?[index].location?.y
                                as String,
                          );
                    },
                  ),
                );
              },
              error: (error) => Center(
                    child: Text(error),
                  ));
        },
      ),
    );
  }
}
