import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  String? selectedItem;

  Locale _locale = const Locale("en");

  Locale get locale => _locale;

  final List<Locale> _requiredLocales = const [
    Locale("en"),
    Locale("ne"),
    Locale("ja"),
  ];
  List<Locale> get requiredLocales => _requiredLocales;

  String? _lang;

  String? get lang => _lang;
  void setLocale({required String lang}) {
    selectedItem = lang;
    if (lang == "English") {
      _locale = const Locale('en');
    } else if (lang == "日本") {
      _locale = const Locale('ja');
    } else {
      _locale = const Locale('ne');
    }
    _lang = lang;
    notifyListeners();
    debugPrint(selectedItem);
  }

  void clearMenu() {
    selectedItem = null;
    notifyListeners();
  }
}
