// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a nl locale. All the
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
  String get localeName => 'nl';

  static String m0(number) => "${number} dagen";

  static String m1(number) => "Afgelopen ${number} dagen";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("Koolhydraten"),
        "current_in": MessageLookupByLibrary.simpleMessage("In"),
        "current_out": MessageLookupByLibrary.simpleMessage("Uit"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Verschil"),
        "fats": MessageLookupByLibrary.simpleMessage("Vetten"),
        "header_date": MessageLookupByLibrary.simpleMessage("Datum"),
        "header_diff": MessageLookupByLibrary.simpleMessage("verschil"),
        "header_in": MessageLookupByLibrary.simpleMessage("In"),
        "header_out": MessageLookupByLibrary.simpleMessage("Uit"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Gegevens berekenen..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Bij grotere datasets kan dit even duren."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("van"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Info"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Deze app heeft bepaalde gezondheidsgegevens nodig om correct te kunnen functioneren.\n\n Als de gegevens er niet correct uitzien of altijd 0 zijn, zorg er dan voor dat de app de vereiste toegang heeft.\n\n Controleer Instellingen > Gezondheid > Calorieverschil en zorg ervoor dat alle 3 de waarden zijn ingeschakeld."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Links"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Over"),
        "past_days": m1,
        "permissions_grant":
            MessageLookupByLibrary.simpleMessage("Studiebeurs"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Vereiste machtigingen"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "Om je calorieverschillen te kunnen berekenen en je macro\'s te kunnen weergeven, heeft Calorie Diff toegang nodig tot de volgende gezondheidsrechten:\n\n Actieve, rust- en voedingsenergie\n Dieet koolhydraten, vetten en eiwitten\n\n Calorie Diff verzamelt geen andere gegevens.\n\n Tik op \'Grenzen\' om door te gaan."),
        "protein": MessageLookupByLibrary.simpleMessage("Eiwit"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Schakel macro\'s in"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Redden"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Huidig"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Historisch"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Instellingen"),
        "title": MessageLookupByLibrary.simpleMessage("Calorie verschil")
      };
}
