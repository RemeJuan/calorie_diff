// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a da locale. All the
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
  String get localeName => 'da';

  static String m0(number) => "${number} dage";

  static String m1(number) => "Seneste ${number} dage";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("Kulhydrater"),
        "current_in": MessageLookupByLibrary.simpleMessage("I"),
        "current_out": MessageLookupByLibrary.simpleMessage("Ud"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Forskel"),
        "fats": MessageLookupByLibrary.simpleMessage("Fedtstoffer"),
        "header_date": MessageLookupByLibrary.simpleMessage("Dato"),
        "header_diff": MessageLookupByLibrary.simpleMessage("Diff"),
        "header_in": MessageLookupByLibrary.simpleMessage("I"),
        "header_out": MessageLookupByLibrary.simpleMessage("Ud"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Beregner data..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Dette kan tage et stykke tid for større datasæt."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("af"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Info"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Denne app kræver visse sundhedsdata for at fungere korrekt.\n\n Hvis dataene ikke ser korrekte ud eller altid er 0, skal du sikre dig, at appen har den nødvendige adgang.\n\n Tjek venligst Indstillinger > Sundhed > Kalorieforskel, og sørg for, at alle 3 værdier er aktiveret."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Venstre"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Over"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Give"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Nødvendige tilladelser"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "For at kunne beregne dine kalorieforskelle og vise dig makroer, kræver Calorie Diff adgang til følgende Health-tilladelse:\n\n Aktiv, hvilende og diætenergi\n Kulhydrater, fedt og protein i kosten\n\n Calorie Diff indsamler ikke andre data.\n\n Tryk på \'Gent\' for at fortsætte."),
        "protein": MessageLookupByLibrary.simpleMessage("Protein"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Aktiver makroer"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Gemme"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Nuværende"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Historisk"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Indstillinger"),
        "title": MessageLookupByLibrary.simpleMessage("Kalorie diff")
      };
}
