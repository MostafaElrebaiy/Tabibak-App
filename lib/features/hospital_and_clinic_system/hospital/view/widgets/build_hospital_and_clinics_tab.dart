import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/widgets/clinic_tab_body.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/widgets/hostpital_tab_body.dart';

class BuildHospitalAndClinicsTab extends StatefulWidget {
  const BuildHospitalAndClinicsTab({super.key});

  @override
  State<BuildHospitalAndClinicsTab> createState() =>
      _BuildHospitalAndClinicsTabState();
}

class _BuildHospitalAndClinicsTabState extends State<BuildHospitalAndClinicsTab>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  final List<Widget> _tabsBody = const [HostpitalTabBody(), ClinicTabBody()];
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Tab> _tabs = [
      Tab(text: "hospitals".tr(context)),
      Tab(text: "clinics".tr(context)),
    ];
    return Column(
      children: [
        Expanded(
          flex: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p20.w),
            decoration: const BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.all(Radius.circular(AppSize.s25))),
            child: TabBar(
                controller: _tabController,
                dividerHeight: 0,
                unselectedLabelColor: AppColor.black,
                labelStyle: AppStyle.f20W700BlackMulish,
                unselectedLabelStyle: AppStyle.f20W700BlackMulish,
                labelColor: AppColor.white,
                labelPadding: EdgeInsets.symmetric(
                  horizontal: AppPadding.p10.w,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(AppSize.s25)),
                  color: AppColor.primaryBlue,
                ),
                dividerColor: Colors.white,
                tabs: _tabs),
          ),
        ),
        Expanded(
            flex: 1,
            child: TabBarView(controller: _tabController, children: _tabsBody)),
      ],
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
