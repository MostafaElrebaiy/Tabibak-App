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
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/utilities/custom_error_widget.dart';
import 'package:tabibk/core/widgets/custom_list_tile_shimmer_loading.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/hospital_model/hospital_and_clinic_response.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/hospital/hospital_cubit.dart';
import 'package:tabibk/core/widgets/custom_list_tile_widget.dart';

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
              loading: () => const CustomListTileShimmerLoading(),
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
                            width: 100.w,
                            fit: BoxFit.contain,
                          )
                        : CachedNetworkImage(
                            imageUrl: hospitalData![index].image!,
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
                    title: hospitalData?[index].name ?? "",
                    onTap: () {
                      context.pushNamed(Routes.hospitalInfoView,
                          arguments: hospitalData?[index]);
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
