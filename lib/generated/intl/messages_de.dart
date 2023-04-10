// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static String m0(number) => "${number} Tage";

  static String m1(number) => "Vergangene ${number} Tage";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("Kohlenhydrate"),
        "current_in": MessageLookupByLibrary.simpleMessage("In"),
        "current_out": MessageLookupByLibrary.simpleMessage("Aus"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Unterschied"),
        "fats": MessageLookupByLibrary.simpleMessage("Fette"),
        "header_date": MessageLookupByLibrary.simpleMessage("Datum"),
        "header_diff": MessageLookupByLibrary.simpleMessage("Diff"),
        "header_in": MessageLookupByLibrary.simpleMessage("In"),
        "header_out": MessageLookupByLibrary.simpleMessage("Aus"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Daten berechnen..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Dies kann bei größeren Datensätzen eine Weile dauern."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("von"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Informationen"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Diese App benötigt bestimmte Gesundheitsdaten, um korrekt zu funktionieren. \n\n Wenn die Daten nicht korrekt aussehen oder immer 0 sind, stellen Sie sicher, dass die App den erforderlichen Zugriff hat. \n\n Bitte überprüfe Einstellungen > Gesundheit > Kaloriendiff und stelle sicher, dass alle 3 Werte aktiviert sind."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Links"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Über"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Zuschuss"),
        "permissions_heading": MessageLookupByLibrary.simpleMessage(
            "Erforderliche Berechtigungen"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "Um deine Kalorienunterschiede berechnen und dir Makros anzeigen zu können, benötigt Calorie Diff Zugriff auf die folgende Gesundheitsgenehmigung: \n\n Aktiv-, Ruhe- und Diätenergie \n Diätetische Kohlenhydrate, Fette und Proteine \n\n Calorie Diff sammelt keine weiteren Daten. \n\n Tippe auf „Grant“, um fortzufahren."),
        "protein": MessageLookupByLibrary.simpleMessage("Eiweiss"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Makros aktivieren"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Speichern"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Aktuell"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Historisch"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "title": MessageLookupByLibrary.simpleMessage("Calorie Diff")
      };
}
