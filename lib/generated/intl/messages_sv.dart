// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sv locale. All the
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
  String get localeName => 'sv';

  static String m0(number) => "${number} dagar";

  static String m1(number) => "Senaste ${number} dagarna";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("Kolhydrater"),
        "current_in": MessageLookupByLibrary.simpleMessage("I"),
        "current_out": MessageLookupByLibrary.simpleMessage("Ut"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Skillnad"),
        "fats": MessageLookupByLibrary.simpleMessage("Fetter"),
        "header_date": MessageLookupByLibrary.simpleMessage("Datum"),
        "header_diff": MessageLookupByLibrary.simpleMessage("Diff"),
        "header_in": MessageLookupByLibrary.simpleMessage("I"),
        "header_out": MessageLookupByLibrary.simpleMessage("Ut"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Beräknar data..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Detta kan ta ett tag för större datamängder."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("av"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Info"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Denna app kräver vissa hälsodata för att fungera korrekt.\n\n Om uppgifterna inte ser korrekta ut eller alltid är 0, se till att appen har den åtkomst som krävs.\n\n Kontrollera Inställningar > Hälsa > Kaloridiff och se till att alla 3 värdena är aktiverade."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Vänster"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Över"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Bevilja"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Nödvändiga behörigheter"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "För att kunna beräkna dina kaloriskillnader och visa dina makron, kräver Calorie Diff tillgång till följande hälsotillstånd:\n\n Aktiv, vilande och kostenergi\n Kolhydrater, fetter och protein i kosten\n\n Calorie Diff samlar inte in någon annan data.\n\n Tryck på \"Bevilja\" för att fortsätta."),
        "protein": MessageLookupByLibrary.simpleMessage("Protein"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Aktivera makron"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Spara"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Nuvarande"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Historisk"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("inställningar"),
        "title": MessageLookupByLibrary.simpleMessage("Kalori Diff")
      };
}
