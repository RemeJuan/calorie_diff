// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
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
  String get localeName => 'vi';

  static String m0(number) => "${number} ngày";

  static String m1(number) => "${number} ngày qua";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("tinh bột"),
        "current_in": MessageLookupByLibrary.simpleMessage("TRONG"),
        "current_out": MessageLookupByLibrary.simpleMessage("Ngoài"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Sự khác biệt"),
        "fats": MessageLookupByLibrary.simpleMessage("chất béo"),
        "header_date": MessageLookupByLibrary.simpleMessage("Ngày"),
        "header_diff": MessageLookupByLibrary.simpleMessage("khác biệt"),
        "header_in": MessageLookupByLibrary.simpleMessage("TRONG"),
        "header_out": MessageLookupByLibrary.simpleMessage("Ngoài"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Đang tính toán dữ liệu..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "Quá trình này có thể mất một lúc đối với các tập dữ liệu lớn hơn."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("của"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Thông tin"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "Ứng dụng này yêu cầu Dữ liệu sức khỏe nhất định để hoạt động chính xác.\n\n Nếu dữ liệu có vẻ không chính xác hoặc luôn bằng 0, hãy đảm bảo rằng ứng dụng có quyền truy cập cần thiết.\n\n Vui lòng kiểm tra Cài đặt > Sức khỏe > Chênh lệch calo và đảm bảo rằng cả 3 giá trị đều được bật."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Bên trái"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Qua"),
        "past_days": m1,
        "permissions_grant":
            MessageLookupByLibrary.simpleMessage("Khoản trợ cấp"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Quyền cần thiết"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "Để có thể tính toán chênh lệch lượng calo và hiển thị macro cho bạn, Calorie Diff yêu cầu quyền truy cập vào quyền Sức khỏe sau:\n\n Năng lượng hoạt động, nghỉ ngơi và ăn kiêng\n Chế độ ăn kiêng Carbs, Chất béo và Protein\n\n Calorie Diff không thu thập bất kỳ dữ liệu nào khác.\n\n Nhấn \'Cấp\' để tiếp tục."),
        "protein": MessageLookupByLibrary.simpleMessage("Chất đạm"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Bật Macros"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Cứu"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Hiện hành"),
        "tab_historic":
            MessageLookupByLibrary.simpleMessage("Mang tính lịch sử"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Cài đặt"),
        "title": MessageLookupByLibrary.simpleMessage("Chênh lệch calo")
      };
}
