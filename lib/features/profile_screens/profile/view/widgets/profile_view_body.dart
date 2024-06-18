import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/di/dependancy_injection.dart';
import 'package:tabibk/core/utilities/to_capitalize.dart';
import 'package:tabibk/core/widgets/top_back_ground_two.dart';
import 'package:tabibk/features/profile_screens/profile/logic/user_details/user_details_cubit.dart';
import 'package:tabibk/features/profile_screens/profile/logic/user_details/user_details_state.dart';
import 'package:tabibk/features/profile_screens/profile/view/widgets/image_name_email_section.dart';
import 'package:tabibk/features/profile_screens/profile/view/widgets/profile_view_list_items.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            const TopBackgroundTwo(
                thereTitle: true, thereIsBackButton: false, title: 'Profile'),
            Positioned(
              left: 0,
              right: 0,
              top: 90.h,
              child: BlocProvider(
                create: (context) =>
                    UserDetailsCubit(getIt.get())..getUserDetails(),
                child: BlocBuilder<UserDetailsCubit, UserDetailsState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const ImageNameAndEmailSection(
                          email: "", name: "", pngImage: ""),
                      loading: () => const ImageNameAndEmailSection(
                          email: "...", name: "...", pngImage: ""),
                      success: (userDetails) => ImageNameAndEmailSection(
                          email: userDetails.data?.email ?? "",
                          name: toCapitalize(userDetails.data?.name ?? ""),
                          pngImage: userDetails.data?.image ?? ""),
                      error: (error) => const ImageNameAndEmailSection(
                          email: "...", name: "...", pngImage: ""),
                    );
                  },
                ),
              ),
            )
          ],
        ),
        const Expanded(child: ProfileViewListItems()),
      ],
    );
  }
}
