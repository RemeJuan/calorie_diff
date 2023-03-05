import 'package:calorie_diff/route_delegate.dart';
import 'package:device_check/device_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/core_providers.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final themeData = ThemeData(brightness: Brightness.dark);
  final prefs = await SharedPreferences.getInstance();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  final isSupported = await DeviceCheck.instance.isSupported();

  if (isSupported) {
    await DeviceCheck.instance.generateToken();
  }

  runApp(
    RateMyAppBuilder(
      rateMyApp: RateMyApp(
        minDays: 3,
        minLaunches: 7,
        remindDays: 2,
        remindLaunches: 5,
        appStoreIdentifier: 'com.calorie.diff',
      ),
      onInitialized: (context, rateMyApp) {
        if (rateMyApp.shouldOpenDialog) {
          rateMyApp.showRateDialog(context);
        }
      },
      builder: (context) {
        return ProviderScope(
          overrides: [
            sharedPreferencesProvider.overrideWithValue(prefs),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Calorie Diff',
            theme: themeData.copyWith(
              useMaterial3: true,
              textTheme: GoogleFonts.poppinsTextTheme(themeData.textTheme),
              scaffoldBackgroundColor: const Color.fromRGBO(23, 31, 44, 1),
              appBarTheme: const AppBarTheme(
                backgroundColor: Color.fromRGBO(23, 31, 44, 1),
                elevation: 0,
              ),
            ),
            home: const RouteDelegate(),
          ),
        );
      },
    ),
  );
}
