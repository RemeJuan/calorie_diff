// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sk locale. All the
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
  String get localeName => 'sk';

  static String m0(number) => "${number} dní";

  static String m1(number) => "Posledných ${number} dní";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("Sacharidy"),
        "current_in": MessageLookupByLibrary.simpleMessage("In"),
        "current_out": MessageLookupByLibrary.simpleMessage("Von"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Rozdiel"),
        "fats": MessageLookupByLibrary.simpleMessage("Tuky"),
        "header_date": MessageLookupByLibrary.simpleMessage("Dátum"),
        "header_diff": MessageLookupByLibrary.simpleMessage("Dif"),
        "header_in": MessageLookupByLibrary.simpleMessage("In"),
        "header_out": MessageLookupByLibrary.simpleMessage("Von"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Prebieha výpočet údajov..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Pri väčších súboroch údajov to môže chvíľu trvať."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("z"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Info"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Táto aplikácia vyžaduje určité zdravotné údaje, aby správne fungovala.\n\n Ak údaje nevyzerajú správne alebo sú vždy 0, uistite sa, že aplikácia vyžaduje prístup.\n\n Skontrolujte Nastavenia > Zdravie > Rozdiel kalórií a uistite sa, že sú povolené všetky 3 hodnoty."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Vľavo"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Koniec"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Grant"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Požadované povolenia"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "Aby bolo možné vypočítať rozdiely v kalóriách a zobraziť makrá, Kalorický rozdiel vyžaduje prístup k nasledujúcim zdravotným povoleniam:\n\n Aktívna, oddychová a diétna energia\n Diétne sacharidy, tuky a bielkoviny\n\n Calorie Diff nezhromažďuje žiadne ďalšie údaje.\n\n Pokračujte klepnutím na „Udeliť“."),
        "protein": MessageLookupByLibrary.simpleMessage("Proteín"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Povoliť makrá"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Uložiť"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Aktuálne"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Historický"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("nastavenie"),
        "title": MessageLookupByLibrary.simpleMessage("Kalorický rozdiel")
      };
}
