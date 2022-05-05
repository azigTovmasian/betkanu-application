import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kanu/Screens/splash_screen.dart';
import 'package:kanu/localization/set_localization.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static void setLocale(BuildContext context, Locale locale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state!.setLocale(locale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      localizationsDelegates: [
        // we use this code when we want to change the app language according
        // to device(mob) language.
        // AppLocale.delegate,
        // we use this code when we want to change the app language according
        // to what the user have chosen.
        SetLocalization.localizationsDelegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      localeResolutionCallback: (currentLang, supportLang) {
        if (currentLang != null) {
          for (Locale locale in supportLang) {
            // if the first item from suporrtedLocales is equal to the device
            // current language then return that language else go check the
            // second item from the supportedLocales if it's equal to the device
            // language and so on (if there are many languages)...
            if (locale.languageCode == currentLang.languageCode) {
              return currentLang;
            }
          }
        }
        return supportLang
            .first; // supportedLang is the same as supportedLocales
      },
    );
  }
}
