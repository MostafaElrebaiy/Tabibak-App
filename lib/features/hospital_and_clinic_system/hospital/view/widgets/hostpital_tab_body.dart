import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/utilities/custom_error_widget.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/hospital_model/hospital_and_clinic_response.dart';
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
              initial: () => Center(
                    child: Text(
                      "plesaeSelectDepartment".tr(context),
                      style: AppStyle.f18BalckW400Mulish,
                    ),
                  ),
              loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
              success: (hosptials) {
                HospitalAndClinicResponse hosptial =
                    hosptials as HospitalAndClinicResponse;
                List<HospitalAndClinicData>? hospitalData = hosptial.data;
                return ListView.builder(
                  itemCount: hospitalData?.length ?? 0,
                  itemBuilder: (context, index) => CustomListTileWidget(
                    distance: hospitalData?[index].distance.toString() ?? "",
                    imageWidget: hospitalData?[index].image == null
                        ? Image.asset(
                            AppAsset.heartattackImage,
                          )
                        : Image.network(
                            hospitalData![index].image!,
                          ),
                    title: hospitalData?[index].name ?? "",
                    onTap: () {
                      context.pushNamed(Routes.hospitalInfoView,
                          arguments: hospitalData?[index]);
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
