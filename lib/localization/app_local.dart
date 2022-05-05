// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class AppLocale {
//   final Locale locale;
//   AppLocale(this.locale);

//   Map<String, String>? _loadedLocalizedValues;

//   static AppLocale? of(BuildContext context) {
//     return Localizations.of(context, AppLocale); 
//    // return Localizations.of<AppLocale>(context, AppLocale);
//   }

//   Future loadLang() async {
//     String _langFile =
//         await rootBundle.loadString('assets/lang/${locale.languageCode}.json');
//     Map<String, dynamic> _loadedValues = jsonDecode(_langFile);
//     // here we make sure that the values of the map are string 
//     _loadedLocalizedValues =
//         _loadedValues.map((key, value) => MapEntry(key, value.toString()));
//   }
//   // in this method we pass the key it returns us the value of that key
//   String? getTranslated(String key) {
//     return _loadedLocalizedValues![key];
//   }

//   static const LocalizationsDelegate<AppLocale> delegate = _AppLocaleDelegate();
// }

// class _AppLocaleDelegate extends LocalizationsDelegate<AppLocale> {
//   const _AppLocaleDelegate();
//   @override
//   bool isSupported(Locale locale) {
//     return ['en', 'ar'].contains(locale.languageCode);
//   }

//   @override
//   Future<AppLocale> load(Locale locale) async {
//     AppLocale appLocale = AppLocale(locale);
//     await appLocale.loadLang();
//     return appLocale;
//   }

//   @override
//   bool shouldReload(_AppLocaleDelegate old) => false;
// }

// getLang(BuildContext context, String key) {
//   return AppLocale.of(context)!.getTranslated(key);
// }
