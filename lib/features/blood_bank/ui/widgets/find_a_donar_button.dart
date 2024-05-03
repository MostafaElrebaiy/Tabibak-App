import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabibk/features/blood_bank/ui/widgets/build_select_blood_type.dart';
import '../../../../core/helper/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles.dart';

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
        selectBloodType(
          context: context,
          bloodGroup: _bloodGroup,
          currentBloodGroup: currentBloodGroup,
        ).then((value) {
          if (value != null) {
            setState(() {
              currentBloodGroup = value;
            });
          }
        });
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
}
