import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/utilities/custom_error_widget.dart';
import 'package:tabibk/core/widgets/custom_list_tile_shimmer_loading.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/hospital_model/hospital_and_clinic_response.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/clinic/clinic_cubit.dart';
import 'package:tabibk/core/widgets/custom_list_tile_widget.dart';

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
              initial: () => Column(
                    children: [
                      Lottie.asset(AppAsset.chooseDepartmentJson_2,
                          width: 200.w, height: 200.h, fit: BoxFit.fitHeight),
                      Text(
                        "plesaeSelectDepartment".tr(context),
                        style: AppStyle.f18BalckW400Mulish,
                      ),
                    ],
                  ),
              loading: () {
                context.read<ClinicCubit>().getClinics(
                    departmentId: context.read<ClinicCubit>().departmentId ?? 0,
                    lat: context.read<ClinicCubit>().lat,
                    lng: context.read<ClinicCubit>().lng);
                return const CustomListTileShimmerLoading();
              },
              success: (clinics) {
                HospitalAndClinicResponse clinic =
                    clinics as HospitalAndClinicResponse;
                List<HospitalAndClinicData>? clinicList = clinic.data;
                return ListView.builder(
                  itemCount: clinic.data?.length ?? 0,
                  itemBuilder: (context, index) => CustomListTileWidget(
                    distance: clinicList?[index].distance.toString() ?? "",
                    title: clinicList?[index].name ?? "",
                    imageWidget: clinicList?[index].image == null
                        ? Image.asset(
                            AppAsset.heartattackImage,
                          )
                        : CachedNetworkImage(
                            imageUrl: clinicList![index].image!,
                            width: 100.w,
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) =>
                                    Shimmer.fromColors(
                              baseColor: AppColor.lightGray,
                              highlightColor: AppColor.white,
                              child: Container(
                                width: 100.w,
                                decoration: const BoxDecoration(
                                  color: AppColor.white,
                                ),
                              ),
                            ),
                            fadeInDuration: const Duration(milliseconds: 250),
                            imageBuilder: (context, imageProvider) => Container(
                              width: 100.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            errorWidget: (context, url, error) => Image.asset(
                              AppAsset.heartattackImage,
                              width: 100.w,
                              fit: BoxFit.contain,
                            ),
                          ),
                    onTap: () {
                      context.pushNamed(Routes.hospitalInfoView,
                          arguments: clinicList?[index]);
                    },
                  ).animate().fade(
                      duration: AppConstant.animationDuration.milliseconds),
                );
              },
              error: (error) => CustomErrorWidget(errorMessage: error));
        },
      ),
    );
  }
}
