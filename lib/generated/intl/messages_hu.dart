// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hu locale. All the
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
  String get localeName => 'hu';

  static String m0(number) => "${number} nap";

  static String m1(number) => "Elmúlt ${number} nap";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("szénhidrát"),
        "current_in": MessageLookupByLibrary.simpleMessage("Ban ben"),
        "current_out": MessageLookupByLibrary.simpleMessage("Ki"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Különbség"),
        "fats": MessageLookupByLibrary.simpleMessage("Zsírok"),
        "header_date": MessageLookupByLibrary.simpleMessage("Dátum"),
        "header_diff": MessageLookupByLibrary.simpleMessage("Diff"),
        "header_in": MessageLookupByLibrary.simpleMessage("Ban ben"),
        "header_out": MessageLookupByLibrary.simpleMessage("Ki"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Adatok számítása..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Ez nagyobb adatkészletek esetén eltarthat egy ideig."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("nak,-nek"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Info"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Az alkalmazás megfelelő működéséhez bizonyos egészségügyi adatokra van szükség.\n\n Ha az adatok nem tűnnek helyesnek, vagy mindig 0, győződjön meg arról, hogy az alkalmazás rendelkezik a szükséges hozzáféréssel.\n\n Kérjük, ellenőrizze a Beállítások > Egészség > Kalóriadiff. lehetőséget, és győződjön meg arról, hogy mind a 3 érték engedélyezve van."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Bal"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Felett"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Grant"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Szükséges engedélyek"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "A kalóriakülönbségek kiszámításához és a makrók megjelenítéséhez a Calorie Diff a következő egészségügyi engedélyhez szükséges:\n\n Aktív, pihenő és diétás energia\n Diétás szénhidrátok, zsírok és fehérjék\n\n A Calorie Diff semmilyen más adatot nem gyűjt.\n\n A folytatáshoz koppintson a „Megenged” gombra."),
        "protein": MessageLookupByLibrary.simpleMessage("Fehérje"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Makrók engedélyezése"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Megment"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Jelenlegi"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Történelmi"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Beállítások"),
        "title": MessageLookupByLibrary.simpleMessage("Kalória Diff")
      };
}
