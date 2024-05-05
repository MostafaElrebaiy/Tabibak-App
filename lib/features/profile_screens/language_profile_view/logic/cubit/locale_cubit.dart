import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/features/profile_screens/language_profile_view/view/widgets/language_cache_helper.dart';
import 'package:tabibk/tabibk_app.dart';

part 'locale_state.dart';
class LocaleCubit extends Cubit<ChangeLocaleState> {
  LocaleCubit() : super(const ChangeLocaleState(locale: Locale("en")));

   

  Future<void> getSavedLanguage() async {
     String cachedLanguageCode =
        await LanguageCacheHelper().getCachedLanguageCode();
    emit(
      ChangeLocaleState(
        locale: lang =Locale(cachedLanguageCode),
      ),
    );
  }

  Future<void> changedLanguage(String languageCode)async{
    await LanguageCacheHelper().cacheLanguageCode(languageCode);
    emit(
      ChangeLocaleState(
        locale: Locale(languageCode),
      ),
    );
  }
}
