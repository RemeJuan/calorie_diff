// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a no locale. All the
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
  String get localeName => 'no';

  static String m0(number) => "${number} dager";

  static String m1(number) => "Siste ${number} dager";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("Karbohydrater"),
        "current_in": MessageLookupByLibrary.simpleMessage("I"),
        "current_out": MessageLookupByLibrary.simpleMessage("Ute"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Forskjell"),
        "fats": MessageLookupByLibrary.simpleMessage("Fett"),
        "header_date": MessageLookupByLibrary.simpleMessage("Dato"),
        "header_diff": MessageLookupByLibrary.simpleMessage("Forskj"),
        "header_in": MessageLookupByLibrary.simpleMessage("I"),
        "header_out": MessageLookupByLibrary.simpleMessage("Ute"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Beregner data..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Dette kan ta litt tid for større datasett."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("av"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Info"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Denne appen krever visse helsedata for å fungere korrekt.\n\n Hvis dataene ikke ser riktige ut eller alltid er 0, sørg for at appen har den nødvendige tilgangen.\n\n Vennligst sjekk Innstillinger > Helse > Kaloridiff, og sørg for at alle 3 verdiene er aktivert."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Venstre"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Over"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Stipend"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Nødvendige tillatelser"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "For å kunne beregne kaloriforskjellene dine og vise makroer, krever Calorie Diff tilgang til følgende helsetillatelse:\n\n Aktiv, hvilende og kostholdsenergi\n Kostholdskarbohydrater, fett og protein\n\n Calorie Diff samler ikke inn andre data.\n\n Trykk på \"Grant\" for å fortsette."),
        "protein": MessageLookupByLibrary.simpleMessage("Protein"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Aktiver makroer"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Lagre"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Nåværende"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Historisk"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Innstillinger"),
        "title": MessageLookupByLibrary.simpleMessage("Kaloridiff")
      };
}
