import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final themeData = ThemeData(brightness: Brightness.dark);

  runApp(
    ProviderScope(
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
        home: const CalorieDiffApp(),
      ),
    ),
  );
}
