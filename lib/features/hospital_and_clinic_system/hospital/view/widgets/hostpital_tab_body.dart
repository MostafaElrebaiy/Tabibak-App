import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/hospital_model/hospital_response.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/hospital/hospital_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/widgets/custom_list_tile_widget.dart';

class HostpitalTabBody extends StatelessWidget {
  const HostpitalTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppConstant.appHorizontalPadding.w,
          vertical: AppConstant.appVerticalPadding.h),
      child: BlocBuilder<HospitalCubit, HospitalState>(
        builder: (context, state) {
          return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () {
                context.read<HospitalCubit>().getHospital(
                    departmentId:
                        context.read<HospitalCubit>().departmentId ?? 0,
                    lat: context.read<HospitalCubit>().lat,
                    lng: context.read<HospitalCubit>().lng);
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              success: (hosptials) {
                HospitalResponse hosptial = hosptials as HospitalResponse;
                return ListView.builder(
                  itemCount: hosptial.data?.hospitals?.length ?? 0,
                  itemBuilder: (context, index) => CustomListTileWidget(
                    distance:
                        hosptial.data?.hospitals?[index].distance.toString() ??
                            "",
                    image: AppAsset.hospitalImage,
                    title: hosptial.data?.hospitals?[index].name ?? "",
                    onTap: () {
                      context.read<HospitalCubit>().goToMap(
                            lat: hosptial.data?.hospitals?[index].location?.x
                                as String,
                            lng: hosptial.data?.hospitals?[index].location?.y
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
