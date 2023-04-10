// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a tr locale. All the
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
  String get localeName => 'tr';

  static String m0(number) => "${number} gün";

  static String m1(number) => "Son ${number} gün";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("karbonhidrat"),
        "current_in": MessageLookupByLibrary.simpleMessage("İçinde"),
        "current_out": MessageLookupByLibrary.simpleMessage("Dışarı"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Fark"),
        "fats": MessageLookupByLibrary.simpleMessage("yağlar"),
        "header_date": MessageLookupByLibrary.simpleMessage("Tarih"),
        "header_diff": MessageLookupByLibrary.simpleMessage("fark"),
        "header_in": MessageLookupByLibrary.simpleMessage("İçinde"),
        "header_out": MessageLookupByLibrary.simpleMessage("Dışarı"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Veriler hesaplanıyor..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Bu, daha büyük veri kümeleri için biraz zaman alabilir."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("ile ilgili"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Bilgi"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Bu uygulamanın düzgün çalışması için belirli Sağlık Verileri gerekir.\n\n Veriler doğru görünmüyorsa veya her zaman 0 ise, uygulamanın gerekli erişime sahip olduğundan emin olun.\n\n Lütfen Ayarlar > Sağlık > Kalori Farkını kontrol edin ve 3 değerin de etkinleştirildiğinden emin olun."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Sol"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Üzerinde"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Hibe etmek"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Gerekli İzinler"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "Kalori farklarınızı hesaplayabilmek ve size makroları gösterebilmek için Kalori Farkı aşağıdaki Sağlık iznine erişim gerektirir:\n\n Aktif, Dinlenme ve Diyet Enerjisi\n Diyetteki Karbonhidratlar, Yağlar ve Protein\n\n Kalori Farkı başka herhangi bir veri toplamaz.\n\n Devam etmek için \'Ver\'e dokunun."),
        "protein": MessageLookupByLibrary.simpleMessage("Protein"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Makroları etkinleştir"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Kaydetmek"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Akım"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Tarihi"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Ayarlar"),
        "title": MessageLookupByLibrary.simpleMessage("Kalori Farkı")
      };
}
