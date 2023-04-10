// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a it locale. All the
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
  String get localeName => 'it';

  static String m0(number) => "${number} giorni";

  static String m1(number) => "Ultimi ${number} giorni";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("Carboidrati"),
        "current_in": MessageLookupByLibrary.simpleMessage("In"),
        "current_out": MessageLookupByLibrary.simpleMessage("Fuori"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Differenza"),
        "fats": MessageLookupByLibrary.simpleMessage("Grassi"),
        "header_date": MessageLookupByLibrary.simpleMessage("Data"),
        "header_diff": MessageLookupByLibrary.simpleMessage("Diff"),
        "header_in": MessageLookupByLibrary.simpleMessage("In"),
        "header_out": MessageLookupByLibrary.simpleMessage("Fuori"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Calcolo dei dati..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Questo potrebbe richiedere del tempo per set di dati più grandi."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("Di"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Informazioni"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Questa app richiede determinati dati sanitari per funzionare correttamente.\n\n Se i dati non sembrano corretti o sono sempre 0, assicurati che l\'app abbia l\'accesso richiesto.\n\n Controlla Impostazioni> Salute> Diff calorie e assicurati che tutti e 3 i valori siano abilitati."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Sinistra"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Sopra"),
        "past_days": m1,
        "permissions_grant":
            MessageLookupByLibrary.simpleMessage("Concessione"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Autorizzazioni richieste"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "Per poter calcolare le tue differenze caloriche e visualizzare i tuoi macro, Calorie Diff richiede l\'accesso alla seguente autorizzazione sanitaria:\n\n Energia attiva, a riposo e dietetica\n Carboidrati, grassi e proteine dietetici\n\n Calorie Diff non raccoglie altri dati.\n\n Tocca \"Concedi\" per continuare."),
        "protein": MessageLookupByLibrary.simpleMessage("Proteina"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Abilita le macro"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Salva"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Attuale"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Storico"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Impostazioni"),
        "title": MessageLookupByLibrary.simpleMessage("Calorie Diff")
      };
}
