import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/di/dependancy_injection.dart';
import 'package:tabibk/features/profile_screens/profile/logic/user_details/user_details_cubit.dart';
import 'package:tabibk/features/profile_screens/profile/view/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserDetailsCubit(getIt.get())..getUserDetails(),
      child: const Scaffold(
        body: ProfileViewBody(),
      ),
    );
  }
}
