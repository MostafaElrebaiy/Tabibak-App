import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/features/profile/logic/cubit/image_picker_cubit.dart';
import 'package:tabibk/features/profile/presentation/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ImagePickerCubit(),
      child: const Scaffold(
        body: ProfileViewBody(),
      ),
    );
  }
}
