// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
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
  String get localeName => 'ja';

  static String m0(number) => "${number} 日";

  static String m1(number) => "過去 ${number} 日";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("炭水化物"),
        "current_in": MessageLookupByLibrary.simpleMessage("の"),
        "current_out": MessageLookupByLibrary.simpleMessage("外"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("違い"),
        "fats": MessageLookupByLibrary.simpleMessage("脂肪"),
        "header_date": MessageLookupByLibrary.simpleMessage("日にち"),
        "header_diff": MessageLookupByLibrary.simpleMessage("差分"),
        "header_in": MessageLookupByLibrary.simpleMessage("の"),
        "header_out": MessageLookupByLibrary.simpleMessage("外"),
        "historic_calc": MessageLookupByLibrary.simpleMessage("データを計算しています..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "大きなデータセットの場合、これには時間がかかる場合があります。"),
        "historic_macro": MessageLookupByLibrary.simpleMessage("の"),
        "info_heading": MessageLookupByLibrary.simpleMessage("情報"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "このアプリが正しく機能するには、特定の健康データが必要です。\n\n データが正しくないように見えるか、常に 0 である場合は、アプリに必要なアクセス権があることを確認してください。\n\n [設定] > [健康] > [カロリー差] を確認し、3 つの値がすべて有効になっていることを確認してください。"),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("左"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("以上"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("許す"),
        "permissions_heading": MessageLookupByLibrary.simpleMessage("必要な権限"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "カロリー差を計算してマクロを表示できるようにするには、Calorie Diff が次のヘルス権限にアクセスする必要があります。\n\n アクティブ、休息、食事エネルギー\n 食事の炭水化物、脂肪、タンパク質\n\n カロリー差は、他のデータを収集しません。\n\n 「付与」をタップして続行します。"),
        "protein": MessageLookupByLibrary.simpleMessage("タンパク質"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("マクロを有効にする"),
        "settings_save": MessageLookupByLibrary.simpleMessage("保存"),
        "tab_current": MessageLookupByLibrary.simpleMessage("現在"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("ヒストリック"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("設定"),
        "title": MessageLookupByLibrary.simpleMessage("カロリー差")
      };
}
