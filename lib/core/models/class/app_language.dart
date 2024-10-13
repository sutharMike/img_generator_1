import 'package:flutter/material.dart';

class AppLanguage extends ChangeNotifier {
  Locale _appLocale = Locale('en');

  Locale get appLocale => _appLocale;

  void toggleLanguage() {
    _appLocale = _appLocale.languageCode == 'en' ? Locale('hi') : Locale('en');
    notifyListeners();
  }
}
