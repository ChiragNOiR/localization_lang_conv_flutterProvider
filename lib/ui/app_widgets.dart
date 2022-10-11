import 'package:drop_down/data/provider/provider.dart';
import 'package:drop_down/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: context.read<LanguageProvider>().requiredLocales,
      locale: context.watch<LanguageProvider>().locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      title: "Setting",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: GoogleFonts.dmSans().fontFamily,
          scaffoldBackgroundColor: const Color(0xFFE5E5E5),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFFE5E5E5),
              centerTitle: true,
              iconTheme: IconThemeData(color: Colors.white),
              toolbarTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ))),
      initialRoute: "dashboard",
      routes: {
        "dashboard": (context) => const WordConverter(),
      },
    );
  }
}
