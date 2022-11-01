import 'package:calorie_diff/route_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/core_providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final themeData = ThemeData(brightness: Brightness.dark);
  final prefs = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calorie Diff',
        theme: themeData.copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(themeData.textTheme),
          scaffoldBackgroundColor: const Color.fromRGBO(23, 31, 44, 1),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(23, 31, 44, 1),
            elevation: 0,
          ),
        ),
        home: const RouteDelegate(),
      ),
    ),
  );
}
