import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tourism_app/core/widgets/custom_bottom_navigation_bar.dart';

import 'const.dart';
import 'core/providers/faviority_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<FaviorityProvider>(
            create: (_) => FaviorityProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'استكشف الأردن',
      locale: const Locale('ar', 'JO'), // Set Arabic locale
      supportedLocales: const [
        Locale('ar', 'JO'), // Arabic, Jordan
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: primaryColor,
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.cairoTextTheme(),
        fontFamily: GoogleFonts.cairo().fontFamily,
      ),
      home: const CustomBottomNavigationBar(),
    );
  }
}
