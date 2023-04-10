// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static String m0(number) => "${number} días";

  static String m1(number) => "Últimos ${number} días";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("Carbohidratos"),
        "current_in": MessageLookupByLibrary.simpleMessage("En"),
        "current_out": MessageLookupByLibrary.simpleMessage("Afuera"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Diferencia"),
        "fats": MessageLookupByLibrary.simpleMessage("Grasas"),
        "header_date": MessageLookupByLibrary.simpleMessage("Fecha"),
        "header_diff": MessageLookupByLibrary.simpleMessage("diferencia"),
        "header_in": MessageLookupByLibrary.simpleMessage("En"),
        "header_out": MessageLookupByLibrary.simpleMessage("Afuera"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Calculando datos..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Esto puede llevar un tiempo para conjuntos de datos más grandes."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("de"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Información"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Esta aplicación requiere ciertos datos de salud para funcionar correctamente.\n\n Si los datos no parecen correctos o siempre son 0, asegúrese de que la aplicación tenga el acceso requerido.\n\n Verifique Configuración> Salud> Calorie Diff, y asegúrese de que los 3 valores estén habilitados."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Izquierda"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Encima"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Conceder"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Permisos requeridos"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "Para poder calcular sus diferencias de calorías y mostrar sus macros, Calorie Diff requiere acceso al siguiente permiso de Salud:\n\n Energía Activa, de Reposo y Dietética\n Carbohidratos dietéticos, grasas y proteínas\n\n Calorie Diff no recopila ningún otro dato.\n\n Toque \'Conceder\' para continuar."),
        "protein": MessageLookupByLibrary.simpleMessage("Proteína"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Habilitar macros"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Ahorrar"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Actual"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Histórico"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Ajustes"),
        "title": MessageLookupByLibrary.simpleMessage("diferencia calórica")
      };
}
