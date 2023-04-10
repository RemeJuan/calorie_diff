// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt locale. All the
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
  String get localeName => 'pt';

  static String m0(number) => "${number} dias";

  static String m1(number) => "Últimos ${number} dias";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("carboidratos"),
        "current_in": MessageLookupByLibrary.simpleMessage("Em"),
        "current_out": MessageLookupByLibrary.simpleMessage("Fora"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Diferença"),
        "fats": MessageLookupByLibrary.simpleMessage("Gorduras"),
        "header_date": MessageLookupByLibrary.simpleMessage("Data"),
        "header_diff": MessageLookupByLibrary.simpleMessage("Diferença"),
        "header_in": MessageLookupByLibrary.simpleMessage("Em"),
        "header_out": MessageLookupByLibrary.simpleMessage("Fora"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Calculando dados..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Isso pode demorar um pouco para conjuntos de dados maiores."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("de"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Informações"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Este aplicativo requer certos dados de saúde para funcionar corretamente.\n\n Se os dados não parecerem corretos ou forem sempre 0, certifique-se de que o aplicativo tenha o acesso necessário.\n\n Verifique Configurações > Saúde > Diferença de calorias e certifique-se de que todos os 3 valores estejam ativados."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Esquerda"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Sobre"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Conceder"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Permissões Necessárias"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "Para poder calcular suas diferenças de calorias e exibir suas macros, o Calorie Diff requer acesso à seguinte permissão de Saúde:\n\n Energia ativa, de repouso e dietética\n Carboidratos, gorduras e proteínas dietéticas\n\n Calorie Diff não coleta nenhum outro dado.\n\n Toque em \'Conceder\' para continuar."),
        "protein": MessageLookupByLibrary.simpleMessage("Proteína"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Ativar macros"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Salvar"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Atual"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Histórico"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Configurações"),
        "title": MessageLookupByLibrary.simpleMessage("Diferença de calorias")
      };
}
