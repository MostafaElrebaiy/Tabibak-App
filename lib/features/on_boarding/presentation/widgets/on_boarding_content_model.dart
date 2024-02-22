import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_string.dart';

class OnBoardingContent {
  final String headLine, textBody;
  final String shape;

  OnBoardingContent(
      {required this.headLine, required this.textBody, required this.shape});
}

List<OnBoardingContent> onBoardingContent = [
  OnBoardingContent(
      headLine: AppString.bloodBank,
      textBody: AppString.lorem,
      shape: AppAsset.onBoardingShape1),
  OnBoardingContent(
      headLine: AppString.hospitalsAndClinics,
      textBody: AppString.lorem,
      shape: AppAsset.onBoardingShape2),
];
