// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
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
  String get localeName => 'ko';

  static String m0(number) => "${number}일";

  static String m1(number) => "지난 ${number}일";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("탄수화물"),
        "current_in": MessageLookupByLibrary.simpleMessage("~ 안에"),
        "current_out": MessageLookupByLibrary.simpleMessage("밖으로"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("차이점"),
        "fats": MessageLookupByLibrary.simpleMessage("지방"),
        "header_date": MessageLookupByLibrary.simpleMessage("날짜"),
        "header_diff": MessageLookupByLibrary.simpleMessage("차이"),
        "header_in": MessageLookupByLibrary.simpleMessage("~ 안에"),
        "header_out": MessageLookupByLibrary.simpleMessage("밖으로"),
        "historic_calc": MessageLookupByLibrary.simpleMessage("데이터 계산 중..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "더 큰 데이터 세트의 경우 시간이 걸릴 수 있습니다."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("~의"),
        "info_heading": MessageLookupByLibrary.simpleMessage("정보"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "이 앱이 제대로 작동하려면 특정 건강 데이터가 필요합니다.\n\n 데이터가 올바르지 않거나 항상 0인 경우 앱에 필요한 액세스 권한이 있는지 확인하세요.\n\n 설정 > 건강 > 칼로리 차이를 확인하고 3가지 값이 모두 활성화되어 있는지 확인하십시오."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("왼쪽"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("위에"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("승인하다"),
        "permissions_heading": MessageLookupByLibrary.simpleMessage("필요한 권한"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "칼로리 차이를 계산하고 매크로를 표시하려면 칼로리 차이에 다음 건강 권한에 대한 액세스 권한이 필요합니다.\n\n 활성, 휴식 및 식이 에너지\n 식이 탄수화물, 지방 및 단백질\n\n 칼로리 차이는 다른 데이터를 수집하지 않습니다.\n\n 계속하려면 \'허가\'를 탭하세요."),
        "protein": MessageLookupByLibrary.simpleMessage("단백질"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("매크로 사용"),
        "settings_save": MessageLookupByLibrary.simpleMessage("구하다"),
        "tab_current": MessageLookupByLibrary.simpleMessage("현재의"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("역사적인"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("설정"),
        "title": MessageLookupByLibrary.simpleMessage("칼로리 차이")
      };
}
