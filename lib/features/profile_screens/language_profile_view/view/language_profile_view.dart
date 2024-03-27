import 'package:flutter/material.dart';
import 'package:tabibk/features/profile_screens/language_profile_view/view/widgets/language_profile_view_body.dart';

class LanguageProfileView extends StatelessWidget {
  const LanguageProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LanguageProfileViewBody(),
    );
  }
}