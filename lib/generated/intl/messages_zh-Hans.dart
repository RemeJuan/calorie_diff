// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_Hans locale. All the
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
  String get localeName => 'zh_Hans';

  static String m0(number) => "${number} 天";

  static String m1(number) => "过去 ${number} 天";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("碳水化合物"),
        "current_in": MessageLookupByLibrary.simpleMessage("在"),
        "current_out": MessageLookupByLibrary.simpleMessage("出去"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("不同之处"),
        "fats": MessageLookupByLibrary.simpleMessage("脂肪"),
        "header_date": MessageLookupByLibrary.simpleMessage("日期"),
        "header_diff": MessageLookupByLibrary.simpleMessage("差异"),
        "header_in": MessageLookupByLibrary.simpleMessage("在"),
        "header_out": MessageLookupByLibrary.simpleMessage("出去"),
        "historic_calc": MessageLookupByLibrary.simpleMessage("计算数据..."),
        "historic_info":
            MessageLookupByLibrary.simpleMessage("对于较大的数据集，这可能需要一段时间。"),
        "historic_macro": MessageLookupByLibrary.simpleMessage("的"),
        "info_heading": MessageLookupByLibrary.simpleMessage("信息"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "此应用程序需要某些健康数据才能正常运行。\n\n 如果数据看起来不正确或始终为 0，请确保应用程序具有所需的访问权限。\n\n 请检查设置 > 健康 > 卡路里差异，并确保启用所有 3 个值。"),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("左边"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("超过"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("授予"),
        "permissions_heading": MessageLookupByLibrary.simpleMessage("所需权限"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "为了能够计算您的卡路里差异并向您显示宏，Calorie Diff 需要访问以下健康权限：\n\n 活跃、休息和饮食能量\n 膳食碳水化合物、脂肪和蛋白质\n\n Calorie Diff 不收集任何其他数据。\n\n 点击“授予”继续。"),
        "protein": MessageLookupByLibrary.simpleMessage("蛋白质"),
        "settings_enable_macros": MessageLookupByLibrary.simpleMessage("启用宏"),
        "settings_save": MessageLookupByLibrary.simpleMessage("节省"),
        "tab_current": MessageLookupByLibrary.simpleMessage("当前的"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("历史性"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("设置"),
        "title": MessageLookupByLibrary.simpleMessage("卡路里差异")
      };
}
