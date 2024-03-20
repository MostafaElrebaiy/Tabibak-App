import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/features/on_boarding/view/widgets/on_boarding_button.dart';
import 'package:tabibk/features/on_boarding/view/widgets/build_dot_widget.dart';
import 'package:tabibk/features/on_boarding/view/widgets/on_boarding_shape.dart';
import 'package:tabibk/features/on_boarding/view/widgets/on_boarding_text.dart';
import 'package:tabibk/features/on_boarding/view/widgets/on_boarding_content_model.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  int currentPageIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (int page) {
        setState(() {
          currentPageIndex = page;
        });
      },
      controller: _pageController,
      itemCount: onBoardingContent.length,
      itemBuilder: (_, index) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  OnBoardingShape(shape: onBoardingContent[index].shape),
                  verticalSpace(AppSize.s55),
                  OnBoardingText(
                      headLine: onBoardingContent[index].headLine,
                      textBody: onBoardingContent[index].textBody)
                ],
              ),
              verticalSpace(150),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.p16.w, vertical: AppPadding.p30.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: List.generate(
                            onBoardingContent.length,
                            (index) => buildDotWidget(
                                index: index, currentPage: currentPageIndex),
                          ),
                        ),
                        OnBoardingButton(onTap: () {
                          if (currentPageIndex < onBoardingContent.length - 1) {
                            _pageController.nextPage(
                                duration: const Duration(milliseconds: 250),
                                curve: Curves.easeIn);
                          } else {
                            context.pushReplacementNamed(
                                Routes.secondOnBoardingScreen);
                          }
                        }),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
