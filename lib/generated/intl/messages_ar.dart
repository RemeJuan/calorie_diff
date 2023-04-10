// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(number) => "${number} يوم";

  static String m1(number) => "الأيام الـ ${number} الماضية";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("الكربوهيدرات"),
        "current_in": MessageLookupByLibrary.simpleMessage("في"),
        "current_out": MessageLookupByLibrary.simpleMessage("خارج"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("اختلاف"),
        "fats": MessageLookupByLibrary.simpleMessage("الدهون"),
        "header_date": MessageLookupByLibrary.simpleMessage("تاريخ"),
        "header_diff": MessageLookupByLibrary.simpleMessage("الفارق"),
        "header_in": MessageLookupByLibrary.simpleMessage("في"),
        "header_out": MessageLookupByLibrary.simpleMessage("خارج"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("جاري حساب البيانات ..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "قد يستغرق هذا بعض الوقت لمجموعات البيانات الأكبر."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("ل"),
        "info_heading": MessageLookupByLibrary.simpleMessage("معلومات"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "يتطلب هذا التطبيق بيانات صحية معينة حتى يعمل بشكل صحيح.\n\n إذا كانت البيانات لا تبدو صحيحة أو كانت دائمًا 0 ، فتأكد من أن التطبيق هو حق الوصول المطلوب.\n\n يرجى التحقق من الإعدادات> الصحة> فرق السعرات الحرارية ، وتأكد من تمكين جميع القيم الثلاث."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("غادر"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("زيادة"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("منحة"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("الأذونات المطلوبة"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "لكي تتمكن من حساب الفروق في السعرات الحرارية وعرض وحدات الماكرو ، يتطلب Calorie Diff الوصول إلى إذن Health التالي:\n\n الطاقة النشطة والراحة والغذائية\n الكربوهيدرات والدهون والبروتينات الغذائية\n\n لا يجمع Calorie Diff أي بيانات أخرى.\n\n اضغط على \"منح\" للمتابعة."),
        "protein": MessageLookupByLibrary.simpleMessage("بروتين"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("تمكين وحدات الماكرو"),
        "settings_save": MessageLookupByLibrary.simpleMessage("يحفظ"),
        "tab_current": MessageLookupByLibrary.simpleMessage("حاضِر"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("تاريخي"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("إعدادات"),
        "title": MessageLookupByLibrary.simpleMessage("فرق السعرات الحرارية")
      };
}
