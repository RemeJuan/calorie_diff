// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a cs locale. All the
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
  String get localeName => 'cs';

  static String m0(number) => "${number} dní";

  static String m1(number) => "Posledních ${number} dnů";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("Sacharidy"),
        "current_in": MessageLookupByLibrary.simpleMessage("v"),
        "current_out": MessageLookupByLibrary.simpleMessage("Ven"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Rozdíl"),
        "fats": MessageLookupByLibrary.simpleMessage("Tuky"),
        "header_date": MessageLookupByLibrary.simpleMessage("datum"),
        "header_diff": MessageLookupByLibrary.simpleMessage("Dif"),
        "header_in": MessageLookupByLibrary.simpleMessage("v"),
        "header_out": MessageLookupByLibrary.simpleMessage("Ven"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Počítání dat..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "U větších souborů dat to může chvíli trvat."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("z"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Info"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Tato aplikace vyžaduje určitá zdravotní data, aby správně fungovala.\n\n Pokud data nevypadají správně nebo jsou vždy 0, ujistěte se, že aplikace má požadovaný přístup.\n\n Zkontrolujte Nastavení > Zdraví > Rozdíl kalorií a ujistěte se, že jsou povoleny všechny 3 hodnoty."),
        "macro_prefix_left":
            MessageLookupByLibrary.simpleMessage("Vlevo, odjet"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Přes"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Grant"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Požadovaná oprávnění"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "Aby bylo možné vypočítat vaše rozdíly v kaloriích a zobrazit vám makra, vyžaduje Calorie Diff přístup k následujícímu oprávnění Zdraví:\n\n Aktivní, odpočinková a dietní energie\n Dietní sacharidy, tuky a bílkoviny\n\n Calorie Diff neshromažďuje žádná další data.\n\n Pokračujte klepnutím na „Udělit“."),
        "protein": MessageLookupByLibrary.simpleMessage("Protein"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Povolit makra"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Uložit"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Aktuální"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Historický"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Nastavení"),
        "title": MessageLookupByLibrary.simpleMessage("Kalorický rozdíl")
      };
}
