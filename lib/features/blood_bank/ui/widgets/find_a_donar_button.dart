import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import '../../../../core/helper/app_assets.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_widget/app_text_button.dart';

class FindDonarButton extends StatefulWidget {
  const FindDonarButton({super.key});

  @override
  State<FindDonarButton> createState() => _FindDonarButtonState();
}

List<dynamic> _bloodGroup = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'];

class _FindDonarButtonState extends State<FindDonarButton> {
  String currentBloodGroup = _bloodGroup[0];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        selectBloodType(context);
      },
      child: Container(
        width: 150.w,
        height: 150.h,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColor.mainBlue),
          color: AppColor.white,
          borderRadius: BorderRadius.circular(70),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAsset.searchIcon,
              height: 50,
              width: 50,
            ),
            Text('Find Donar', style: AppStyle.font16MainBLueBold),
          ],
        ),
      ),
    );
  }

  Future<dynamic> selectBloodType(BuildContext context) {
    return showModalBottomSheet(
      scrollControlDisabledMaxHeightRatio: BorderSide.strokeAlignOutside,
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) => SizedBox(
            width: double.infinity,
            height: 700.h,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  width: double.infinity,
                  height: 700.h,
                  child: Column(
                    children: [
                      verticalSpace(25.h),
                      Text('Sort', style: AppStyle.font20GrayBold),
                      Expanded(
                        child: ListView.separated(
                            separatorBuilder: (context, index) => const Divider(
                                  color: AppColor.gray,
                                  thickness: .2,
                                  height: 10,
                                ),
                            itemCount: _bloodGroup.length,
                            itemBuilder: (context, index) {
                              return RadioListTile(
                                title: Text(_bloodGroup[index],
                                    style: AppStyle.f20Bold),
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                activeColor: AppColor.mainBlue,
                                selected:
                                    currentBloodGroup == _bloodGroup[index]
                                        ? true
                                        : false,
                                value: _bloodGroup[index],
                                groupValue: currentBloodGroup,
                                onChanged: (type) {
                                  setState(() {
                                    currentBloodGroup = type.toString();
                                  });
                                },
                              );
                            }),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColor.mainBlue,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: AppTextButton(
                          backgroundColor: AppColor.white,
                          buttonText: 'Submit',
                          textStyle: AppStyle.f22mainBlueBold,
                          onPressed: () {
                            context.pushNamed(
                                Routes.bloodBankSearchScreen);
                          },
                          buttonWidth: 220.w,
                          buttonHeight: 55.h,
                        ),
                      ),
                      verticalSpace(8.h)
                    ],
                  ),
                ),
                Positioned(
                  top: -40,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColor.mainBlue,
                    child: SvgPicture.asset(
                      AppAsset.downDialogIcon,
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
