import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/features/on_boarding/logic/cubit/on_boarding_cubit.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/build_button_widget.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/build_dot_widget.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/build_shape_widget.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/build_text_widget.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/on_boarding_content_model.dart';


class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        return PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (page) {
            state.pageIndex = page;
          },
          controller: state.controller,
          pageSnapping: false,
          itemCount: onBoardingContent.length,
          itemBuilder: (_, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    buildShapeWidget(shape: onBoardingContent[index].shape),
                    SizedBox(
                      height: AppSize.s55.h,
                    ),
                    buildTextWidget(
                        headLine: onBoardingContent[index].headLine,
                        textBody: onBoardingContent[index].textBody)
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: AppSize.s40.h,
                        width: AppSize.s343.w,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: List.generate(
                                  2,
                                  (index) => buildDotWidget(
                                        index: index,
                                        currentPage: state.pageIndex,
                                      )),
                            ),
                            buildButtonWidget(onTap: () {
                              context
                                  .read<OnBoardingCubit>()
                                  .checkCurrentPage(state.pageIndex, context);
                            }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: AppSize.s30.h,
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );

  }
}
