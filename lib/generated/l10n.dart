// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:localizely_sdk/localizely_sdk.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    if (!Localizely.hasMetadata()) {
      Localizely.setMetadata(_metadata);
    }
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  static final Map<String, List<String>> _metadata = {
    'carbs': [],
    'current_in': [],
    'current_out': [],
    'days_select': ['number'],
    'difference': [],
    'fats': [],
    'header_date': [],
    'header_diff': [],
    'header_in': [],
    'header_out': [],
    'historic_calc': [],
    'historic_info': [],
    'historic_macro': [],
    'info_heading': [],
    'info_text': [],
    'macro_prefix_left': [],
    'macro_prefix_over': [],
    'past_days': ['number'],
    'permissions_grant': [],
    'permissions_heading': [],
    'permissions_text': [],
    'protein': [],
    'settings_enable_macros': [],
    'settings_save': [],
    'tab_current': [],
    'tab_historic': [],
    'tab_settings': [],
    'title': []
  };

  /// `Carbs`
  String get carbs {
    return Intl.message(
      'Carbs',
      name: 'carbs',
      desc: '',
      args: [],
    );
  }

  /// `In`
  String get current_in {
    return Intl.message(
      'In',
      name: 'current_in',
      desc: '',
      args: [],
    );
  }

  /// `Out`
  String get current_out {
    return Intl.message(
      'Out',
      name: 'current_out',
      desc: '',
      args: [],
    );
  }

  /// `{number} days`
  String days_select(Object number) {
    return Intl.message(
      '$number days',
      name: 'days_select',
      desc: '',
      args: [number],
    );
  }

  /// `Difference`
  String get difference {
    return Intl.message(
      'Difference',
      name: 'difference',
      desc: '',
      args: [],
    );
  }

  /// `Fats`
  String get fats {
    return Intl.message(
      'Fats',
      name: 'fats',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get header_date {
    return Intl.message(
      'Date',
      name: 'header_date',
      desc: '',
      args: [],
    );
  }

  /// `Diff`
  String get header_diff {
    return Intl.message(
      'Diff',
      name: 'header_diff',
      desc: '',
      args: [],
    );
  }

  /// `In`
  String get header_in {
    return Intl.message(
      'In',
      name: 'header_in',
      desc: '',
      args: [],
    );
  }

  /// `Out`
  String get header_out {
    return Intl.message(
      'Out',
      name: 'header_out',
      desc: '',
      args: [],
    );
  }

  /// `Calculating data...`
  String get historic_calc {
    return Intl.message(
      'Calculating data...',
      name: 'historic_calc',
      desc: '',
      args: [],
    );
  }

  /// `This may take a while for larger data sets.`
  String get historic_info {
    return Intl.message(
      'This may take a while for larger data sets.',
      name: 'historic_info',
      desc: '',
      args: [],
    );
  }

  /// `of`
  String get historic_macro {
    return Intl.message(
      'of',
      name: 'historic_macro',
      desc: '',
      args: [],
    );
  }

  /// `Info`
  String get info_heading {
    return Intl.message(
      'Info',
      name: 'info_heading',
      desc: '',
      args: [],
    );
  }

  /// `This app requires certain Health Data in order to function correctly. \n\n If the data does not look correct or is always 0, ensure that the app the required access. \n\n Please check Settings > Health > Calorie Diff, and make sure all 3 values are enabled.`
  String get info_text {
    return Intl.message(
      'This app requires certain Health Data in order to function correctly. \n\n If the data does not look correct or is always 0, ensure that the app the required access. \n\n Please check Settings > Health > Calorie Diff, and make sure all 3 values are enabled.',
      name: 'info_text',
      desc: '',
      args: [],
    );
  }

  /// `Left`
  String get macro_prefix_left {
    return Intl.message(
      'Left',
      name: 'macro_prefix_left',
      desc: '',
      args: [],
    );
  }

  /// `Over`
  String get macro_prefix_over {
    return Intl.message(
      'Over',
      name: 'macro_prefix_over',
      desc: '',
      args: [],
    );
  }

  /// `Past {number} days`
  String past_days(Object number) {
    return Intl.message(
      'Past $number days',
      name: 'past_days',
      desc: '',
      args: [number],
    );
  }

  /// `Grant`
  String get permissions_grant {
    return Intl.message(
      'Grant',
      name: 'permissions_grant',
      desc: '',
      args: [],
    );
  }

  /// `Required Permissions`
  String get permissions_heading {
    return Intl.message(
      'Required Permissions',
      name: 'permissions_heading',
      desc: '',
      args: [],
    );
  }

  /// `In order to be able to calculate your calorie differences and display you macros, Calorie Diff requires access to the following Health permission: \n\n Active, Resting and Dietary Energy \n Dietary Carbs, Fats and Protein \n\n Calorie Diff does not collect any other data. \n\n Tap 'Grant' to continue.`
  String get permissions_text {
    return Intl.message(
      'In order to be able to calculate your calorie differences and display you macros, Calorie Diff requires access to the following Health permission: \n\n Active, Resting and Dietary Energy \n Dietary Carbs, Fats and Protein \n\n Calorie Diff does not collect any other data. \n\n Tap \'Grant\' to continue.',
      name: 'permissions_text',
      desc: '',
      args: [],
    );
  }

  /// `Protein`
  String get protein {
    return Intl.message(
      'Protein',
      name: 'protein',
      desc: '',
      args: [],
    );
  }

  /// `Enable macros`
  String get settings_enable_macros {
    return Intl.message(
      'Enable macros',
      name: 'settings_enable_macros',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get settings_save {
    return Intl.message(
      'Save',
      name: 'settings_save',
      desc: '',
      args: [],
    );
  }

  /// `Current`
  String get tab_current {
    return Intl.message(
      'Current',
      name: 'tab_current',
      desc: '',
      args: [],
    );
  }

  /// `Historic`
  String get tab_historic {
    return Intl.message(
      'Historic',
      name: 'tab_historic',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get tab_settings {
    return Intl.message(
      'Settings',
      name: 'tab_settings',
      desc: '',
      args: [],
    );
  }

  /// `Calorie Diff`
  String get title {
    return Intl.message(
      'Calorie Diff',
      name: 'title',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
