import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/networking/shared_preferences.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/core/widgets/top_back_ground_two.dart';
import 'package:tabibk/features/profile_screens/language_profile_view/logic/cubit/locale_cubit.dart';
import 'package:tabibk/features/profile_screens/language_profile_view/view/widgets/language_list_tile.dart';
import 'package:tabibk/tabibk_app.dart';

class LanguageProfileViewBody extends StatelessWidget {
  const LanguageProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopBackgroundTwo(
            thereTitle: true,
            title: AppLocalization.of(context)!.translate("language")),
        Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            child: BlocBuilder<LocaleCubit, ChangeLocaleState>(
              builder: (context, state) {
                return Column(
                  children: [
                    LanguageListTile(
                        isSelected: lang == const Locale("en") ? true : false,
                        title:
                            AppLocalization.of(context)!.translate("english"),
                        onTap: () {
                          if (lang == const Locale("en")) return;
                          CacheHelper.insertToCache(
                              key: AppConstant.lang, value: "en");
                          Phoenix.rebirth(context);
                          context.read<LocaleCubit>().changedLanguage("en");
                          lang = state.locale;
                        }),
                    verticalSpace(15),
                    LanguageListTile(
                        isSelected: lang == const Locale("ar") ? true : false,
                        title: AppLocalization.of(context)!.translate("arabic"),
                        onTap: () {
                          if (lang == const Locale("ar")) return;
                          CacheHelper.insertToCache(
                              key: AppConstant.lang, value: "ar");

                          Phoenix.rebirth(context);

                          context.read<LocaleCubit>().changedLanguage("ar");

                          lang = state.locale;
                        }),
                  ],
                );
              },
            ))
      ],
    );
  }
}
