// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a uk locale. All the
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
  String get localeName => 'uk';

  static String m0(number) => "${number} днів";

  static String m1(number) => "Останні ${number} днів";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("вуглеводи"),
        "current_in": MessageLookupByLibrary.simpleMessage("в"),
        "current_out": MessageLookupByLibrary.simpleMessage("Вийти"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Різниця"),
        "fats": MessageLookupByLibrary.simpleMessage("Жири"),
        "header_date": MessageLookupByLibrary.simpleMessage("Дата"),
        "header_diff": MessageLookupByLibrary.simpleMessage("різниця"),
        "header_in": MessageLookupByLibrary.simpleMessage("в"),
        "header_out": MessageLookupByLibrary.simpleMessage("Вийти"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Обчислення даних..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Для великих наборів даних це може зайняти деякий час."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("з"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Інформація"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Для правильної роботи цієї програми потрібні певні дані про здоров’я.\n\n Якщо дані виглядають неправильно або завжди дорівнюють 0, переконайтеся, що програма має потрібний доступ.\n\n Будь ласка, перевірте «Налаштування» > «Здоров’я» > «Різниця калорій» і переконайтеся, що всі 3 значення ввімкнено."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Ліворуч"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("закінчено"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Грант"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Необхідні дозволи"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "Щоб мати змогу обчислити різницю в калоріях і відобразити макроси, програмі Calorie Diff потрібен доступ до наступного дозволу Health:\n\n Активна енергія, відпочинок і дієта\n Дієтичні вуглеводи, жири та білки\n\n Calorie Diff не збирає жодних інших даних.\n\n Натисніть «Надати», щоб продовжити."),
        "protein": MessageLookupByLibrary.simpleMessage("білок"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Увімкнути макроси"),
        "settings_save": MessageLookupByLibrary.simpleMessage("зберегти"),
        "tab_current": MessageLookupByLibrary.simpleMessage("поточний"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Історичний"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Налаштування"),
        "title": MessageLookupByLibrary.simpleMessage("Різниця калорій")
      };
}
