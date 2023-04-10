// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(number) => "${number} дней";

  static String m1(number) => "Прошедшие ${number} дней";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("Углеводы"),
        "current_in": MessageLookupByLibrary.simpleMessage("В"),
        "current_out": MessageLookupByLibrary.simpleMessage("Вне"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Разница"),
        "fats": MessageLookupByLibrary.simpleMessage("Жиры"),
        "header_date": MessageLookupByLibrary.simpleMessage("Дата"),
        "header_diff": MessageLookupByLibrary.simpleMessage("Диф"),
        "header_in": MessageLookupByLibrary.simpleMessage("В"),
        "header_out": MessageLookupByLibrary.simpleMessage("Вне"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Расчет данных..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Это может занять некоторое время для больших наборов данных."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("из"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Информация"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Это приложение требует определенных данных о здоровье для правильной работы.\n\n Если данные выглядят некорректно или всегда равны 0, убедитесь, что у приложения есть необходимый доступ.\n\n Пожалуйста, проверьте «Настройки»> «Здоровье»> «Разница калорий» и убедитесь, что все 3 значения включены."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Левый"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Над"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Грант"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Требуемые разрешения"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "Чтобы рассчитать разницу в калориях и отобразить макросы, приложению Calorie Diff требуется доступ к следующему разрешению Health:\n\n Активная энергия, энергия отдыха и питания\n Пищевые углеводы, жиры и белки\n\n Calorie Diff не собирает никаких других данных.\n\n Нажмите «Предоставить», чтобы продолжить."),
        "protein": MessageLookupByLibrary.simpleMessage("белок"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Включить макросы"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Сохранять"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Текущий"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Исторический"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "title": MessageLookupByLibrary.simpleMessage("Разница калорий")
      };
}
