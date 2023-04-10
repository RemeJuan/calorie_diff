// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(number) => "${number} jours";

  static String m1(number) => "${number} jours passés";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("Crabes"),
        "current_in": MessageLookupByLibrary.simpleMessage("Dans"),
        "current_out": MessageLookupByLibrary.simpleMessage("Dehors"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Différence"),
        "fats": MessageLookupByLibrary.simpleMessage("Graisses"),
        "header_date": MessageLookupByLibrary.simpleMessage("Date"),
        "header_diff": MessageLookupByLibrary.simpleMessage("Différence"),
        "header_in": MessageLookupByLibrary.simpleMessage("Dans"),
        "header_out": MessageLookupByLibrary.simpleMessage("Dehors"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Calcul des données..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Cela peut prendre un certain temps pour les grands ensembles de données."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("de"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Info"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Cette application nécessite certaines données de santé pour fonctionner correctement.\n\n Si les données ne semblent pas correctes ou sont toujours à 0, assurez-vous que l\'application dispose de l\'accès requis.\n\n Veuillez vérifier Paramètres > Santé > Calorie Diff et assurez-vous que les 3 valeurs sont activées."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Gauche"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Sur"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Accorder"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Autorisations requises"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "Afin de pouvoir calculer vos différences caloriques et afficher vos macros, Calorie Diff nécessite l\'accès à l\'autorisation Santé suivante :\n\n Énergie active, de repos et alimentaire\n Glucides, graisses et protéines alimentaires\n\n Calorie Diff ne collecte aucune autre donnée.\n\n Appuyez sur \"Accorder\" pour continuer."),
        "protein": MessageLookupByLibrary.simpleMessage("Protéine"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Activer les macros"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Sauvegarder"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Actuel"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Historique"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Paramètres"),
        "title": MessageLookupByLibrary.simpleMessage("Différence de calories")
      };
}
