import 'package:calorie_diff/route_delegate.dart';
import 'package:device_check/device_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localizely_sdk/localizely_sdk.dart';
import 'package:rate_my_app/rate_my_app.dart';

import 'core/core_providers.dart';
import 'firebase_options.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Localizely.init(
    '3b89cc02678d488dbdddc9c8cef9bded8ba2fdc6',
    'e1c03b8d4796462296f329034cc5d7bb',
  ); // Init sdk
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
      rateMyApp: _rateConfig,
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
          child: const App(),
        );
      },
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: "Calorie Diff",
      theme: _theme(),
      home: const RouteDelegate(),
    );
  }
}

RateMyApp _rateConfig = RateMyApp(
  minDays: 3,
  minLaunches: 7,
  remindDays: 2,
  remindLaunches: 5,
  appStoreIdentifier: 'com.calorie.diff',
);

ThemeData _theme() {
  final themeData = ThemeData(brightness: Brightness.dark);
  return themeData.copyWith(
    textTheme: GoogleFonts.poppinsTextTheme(themeData.textTheme),
    scaffoldBackgroundColor: const Color.fromRGBO(23, 31, 44, 1),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromRGBO(23, 31, 44, 1),
      elevation: 0,
    ),
  );
}
