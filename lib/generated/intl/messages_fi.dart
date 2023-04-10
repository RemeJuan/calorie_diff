// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fi locale. All the
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
  String get localeName => 'fi';

  static String m0(number) => "${number} päivää";

  static String m1(number) => "Viimeiset ${number} päivää";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("Hiilihydraatit"),
        "current_in": MessageLookupByLibrary.simpleMessage("Sisään"),
        "current_out": MessageLookupByLibrary.simpleMessage("Ulos"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Ero"),
        "fats": MessageLookupByLibrary.simpleMessage("Rasvat"),
        "header_date": MessageLookupByLibrary.simpleMessage("Päivämäärä"),
        "header_diff": MessageLookupByLibrary.simpleMessage("Diff"),
        "header_in": MessageLookupByLibrary.simpleMessage("Sisään"),
        "header_out": MessageLookupByLibrary.simpleMessage("Ulos"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Lasketaan tietoja..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Tämä voi kestää jonkin aikaa suurempien tietojoukkojen kohdalla."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("/"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Tiedot"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Tämä sovellus vaatii tiettyjä terveystietoja toimiakseen oikein.\n\n Jos tiedot eivät näytä oikein tai ovat aina 0, varmista, että sovelluksella on tarvittava käyttöoikeus.\n\n Tarkista Asetukset > Terveys > Kaloriero ja varmista, että kaikki 3 arvoa ovat käytössä."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Vasen"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Yli"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Myöntää"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Vaaditut käyttöoikeudet"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "Voidakseen laskea kalorierot ja näyttää makrot, Calorie Diff vaatii pääsyn seuraavaan terveyslupaan:\n\n Aktiivista, lepo- ja ruokavalioenergiaa\n Hiilihydraatit, rasvat ja proteiinit\n\n Calorie Diff ei kerää muita tietoja.\n\n Jatka napauttamalla \"Myönnä\"."),
        "protein": MessageLookupByLibrary.simpleMessage("Proteiini"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Ota makrot käyttöön"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Tallentaa"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Nykyinen"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Historiallinen"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("asetukset"),
        "title": MessageLookupByLibrary.simpleMessage("Kaloriero")
      };
}
