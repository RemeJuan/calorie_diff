// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ms locale. All the
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
  String get localeName => 'ms';

  static String m0(number) => "${number} hari";

  static String m1(number) => "${number} hari yang lalu";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("Karbohidrat"),
        "current_in": MessageLookupByLibrary.simpleMessage("Dalam"),
        "current_out": MessageLookupByLibrary.simpleMessage("Keluar"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Beza"),
        "fats": MessageLookupByLibrary.simpleMessage("Lemak"),
        "header_date": MessageLookupByLibrary.simpleMessage("Tarikh"),
        "header_diff": MessageLookupByLibrary.simpleMessage("Perbezaan"),
        "header_in": MessageLookupByLibrary.simpleMessage("Dalam"),
        "header_out": MessageLookupByLibrary.simpleMessage("Keluar"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Mengira data..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Ini mungkin mengambil sedikit masa untuk set data yang lebih besar."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("daripada"),
        "info_heading": MessageLookupByLibrary.simpleMessage("info"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Apl ini memerlukan Data Kesihatan tertentu untuk berfungsi dengan betul.\n\n Jika data tidak kelihatan betul atau sentiasa 0, pastikan apl itu mempunyai akses yang diperlukan.\n\n Sila semak Tetapan > Kesihatan > Perbezaan Kalori, dan pastikan semua 3 nilai didayakan."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Dibiarkan"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Berakhir"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Geran"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Kebenaran yang Diperlukan"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "Untuk dapat mengira perbezaan kalori anda dan memaparkan makro anda, Calorie Diff memerlukan akses kepada kebenaran Kesihatan berikut:\n\n Tenaga Aktif, Rehat dan Pemakanan\n Karbohidrat, Lemak dan Protein Pemakanan\n\n Calorie Diff tidak mengumpul sebarang data lain.\n\n Ketik \'Berikan\' untuk meneruskan."),
        "protein": MessageLookupByLibrary.simpleMessage("Protein"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Dayakan makro"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Jimat"),
        "tab_current": MessageLookupByLibrary.simpleMessage("semasa"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Bersejarah"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("tetapan"),
        "title": MessageLookupByLibrary.simpleMessage("Perbezaan Kalori")
      };
}
