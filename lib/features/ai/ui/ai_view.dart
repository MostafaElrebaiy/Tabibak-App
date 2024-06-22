import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/di/dependancy_injection.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/widgets/build_custom_app_bar.dart';
import 'package:tabibk/features/ai/logic/cubit/ai_model_cubit.dart';

import 'package:tabibk/features/ai/ui/widgets/ai_view_body.dart';

class ImageUploadScreen extends StatelessWidget {
  const ImageUploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageCubit(getIt()),
      child: Scaffold(
        appBar: buildCustomAppBar(
          backarrow: false,
          text1: "AI Model",
          style1: AppStyle.f20WhiteW600,
          actions: [],
        ),
        body: const AIViewBody(),
      ),
    );
  }
}
