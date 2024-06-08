import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/di/dependancy_injection.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/pharmacy/data/model/search_pharmacy_response.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_search_cubit/pharmacy_cubit.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_search_cubit/pharmacy_state.dart';

class MedicienSearch extends SearchDelegate {
  SearchPharmacyResponse? pharmacySearchResponse;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      BlocProvider(
          create: (context) => PharmacyCubit(getIt(),getIt(),getIt()),
          child: BlocBuilder<PharmacyCubit, PharmacyState>(
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  context
                      .read<PharmacyCubit>()
                      .searchForMedicien(medicineName: query);
                  // context.read<PharmacyCubit>().searchForMedicien(
                  //       lat: 2222333,
                  //       lng: 3824734,
                  //       medicineName: query,
                  //     );
                  pharmacySearchResponse =
                      context.read<PharmacyCubit>().pharmacySearchResponse;
                },
                icon: const Icon(Icons.search),
              );
            },
          )),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text("Hi Amr ${pharmacySearchResponse?.message ?? "No Data"}"),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }

  // @override
  // ThemeData appBarTheme(BuildContext context) {
  //   ThemeData theme = Theme.of(context);
  //   return theme;
  // }

  // @override
  // PreferredSizeWidget? buildBottom(BuildContext context) {
  //   return PreferredSize(
  //     preferredSize: const Size(300, 50),
  //     child: ElevatedButton(
  //       onPressed: () {
  //         context.read<PharmacyCubit>().searchForMedicien(
  //               lat: 2222333,
  //               lng: 3824734,
  //               medicineName: query,
  //             );
  //       },
  //       child: const Text('Search'),
  //     ),
  //   );
  // }

  @override
  TextInputType? get keyboardType => TextInputType.text;

  @override
  InputDecorationTheme? get searchFieldDecorationTheme => InputDecorationTheme(
        hintStyle: AppStyle.font14GrayRegular,
        isDense: true,
        fillColor: AppColor.white,
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        focusedBorder: outlineInputBorder(AppColor.mainBlue),
        enabledBorder: outlineInputBorder(AppColor.lightGray),
        errorBorder: outlineInputBorder(),
        focusedErrorBorder: outlineInputBorder(),
      );

  @override
  String? get searchFieldLabel => "Search For Medicine";

  @override
  TextStyle? get searchFieldStyle =>
      AppStyle.f16BlackW700Mulish.copyWith(color: Colors.black);

  // @override
  // void showResults(BuildContext context) {

  // }

  // @override
  // void showSuggestions(BuildContext context) {

  // }

  @override
  TextInputAction get textInputAction => TextInputAction.search;

  // @override

  // Animation<double> get transitionAnimation =>  ;
  OutlineInputBorder outlineInputBorder([Color color = Colors.red]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: 1.2,
      ),
      borderRadius: BorderRadius.circular(32),
    );
  }
}
