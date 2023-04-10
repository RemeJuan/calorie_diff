// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ro locale. All the
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
  String get localeName => 'ro';

  static String m0(number) => "${number} zile";

  static String m1(number) => "Ultimele ${number} zile";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("Carbohidrați"),
        "current_in": MessageLookupByLibrary.simpleMessage("În"),
        "current_out": MessageLookupByLibrary.simpleMessage("Afară"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Diferență"),
        "fats": MessageLookupByLibrary.simpleMessage("Grasimi"),
        "header_date": MessageLookupByLibrary.simpleMessage("Data"),
        "header_diff": MessageLookupByLibrary.simpleMessage("Diff"),
        "header_in": MessageLookupByLibrary.simpleMessage("În"),
        "header_out": MessageLookupByLibrary.simpleMessage("Afară"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Se calculează datele..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Acest lucru poate dura ceva timp pentru seturi de date mai mari."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("de"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Info"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Această aplicație necesită anumite date de sănătate pentru a funcționa corect.\n\n Dacă datele nu par corecte sau sunt întotdeauna 0, asigurați-vă că aplicația are accesul necesar.\n\n Vă rugăm să verificați Setări > Sănătate > Diferă calorie și asigurați-vă că toate cele 3 valori sunt activate."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Stânga"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Peste"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Acorda"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Permisiuni necesare"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "Pentru a vă putea calcula diferențele de calorii și a vă afișa macrocomenzi, Calorie Diff necesită acces la următoarea permisiune de sănătate:\n\n Energie activă, de odihnă și alimentară\n Carbohidrați, grăsimi și proteine\n\n Calorie Diff nu colectează alte date.\n\n Atingeți „Acordare” pentru a continua."),
        "protein": MessageLookupByLibrary.simpleMessage("Proteină"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Activați macrocomenzi"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Salvați"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Actual"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Istoric"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Setări"),
        "title": MessageLookupByLibrary.simpleMessage("Dif. calorii")
      };
}
