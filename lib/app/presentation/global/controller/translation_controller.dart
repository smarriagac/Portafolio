import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../generated/translations.g.dart';

final translationProvider = StateNotifierProvider<TranslationsController, bool>(
  (ref) => TranslationsController(),
);

class TranslationsController extends StateNotifier<bool> {
  TranslationsController() : super(false);

  void onChangeLanguaje(bool stateChange) {
    state = stateChange;
    LocaleSettings.setLocale(
      state ? AppLocale.en : AppLocale.es,
    );
  }
}
