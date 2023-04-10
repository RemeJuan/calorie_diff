// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pl';

  static String m0(number) => "${number} dni";

  static String m1(number) => "Ostatnie ${number} dni";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("Węglowodany"),
        "current_in": MessageLookupByLibrary.simpleMessage("W"),
        "current_out": MessageLookupByLibrary.simpleMessage("Na zewnątrz"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Różnica"),
        "fats": MessageLookupByLibrary.simpleMessage("Tłuszcze"),
        "header_date": MessageLookupByLibrary.simpleMessage("Data"),
        "header_diff": MessageLookupByLibrary.simpleMessage("różnica"),
        "header_in": MessageLookupByLibrary.simpleMessage("W"),
        "header_out": MessageLookupByLibrary.simpleMessage("Na zewnątrz"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Obliczanie danych..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "W przypadku większych zestawów danych może to trochę potrwać."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("z"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Informacje"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Ta aplikacja wymaga określonych danych zdrowotnych, aby działać poprawnie.\n\n Jeśli dane nie wyglądają poprawnie lub zawsze wynoszą 0, upewnij się, że aplikacja ma wymagany dostęp.\n\n Sprawdź Ustawienia > Zdrowie > Różnica kalorii i upewnij się, że wszystkie 3 wartości są włączone."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Lewy"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Nad"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Dotacja"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Wymagane uprawnienia"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "Aby móc obliczać różnice kalorii i wyświetlać makra, Kalorie Diff wymagają dostępu do następujących uprawnień Zdrowie:\n\n Aktywna, spoczynkowa i dietetyczna energia\n Dietetyczne węglowodany, tłuszcze i białka\n\n Calorie Diff nie zbiera żadnych innych danych.\n\n Stuknij „Grant”, aby kontynuować."),
        "protein": MessageLookupByLibrary.simpleMessage("Białko"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Włącz makra"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Ratować"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Aktualny"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Historyczny"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Ustawienia"),
        "title": MessageLookupByLibrary.simpleMessage("Różnica kalorii")
      };
}
