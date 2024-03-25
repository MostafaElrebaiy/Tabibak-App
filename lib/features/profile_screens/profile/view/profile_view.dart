import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tabibk/features/profile_screens/profile/view/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    File? image;   //TODO: image is not Working
    if (ModalRoute.of(context)!.settings.arguments != null) {
      image = ModalRoute.of(context)!.settings.arguments as File;
      debugPrint('image is $image');
    }

    return Scaffold(
      body: ProfileViewBody(
        image: image,
      ),
    );
  }
}
