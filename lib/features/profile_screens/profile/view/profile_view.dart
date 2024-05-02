import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tabibk/features/profile_screens/profile/view/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key, this.image});
final File? image;
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: ProfileViewBody(
        image: image,
      ),
    );
  }
}
