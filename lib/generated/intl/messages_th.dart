// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a th locale. All the
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
  String get localeName => 'th';

  static String m0(number) => "${number} วัน";

  static String m1(number) => "${number} วันที่ผ่านมา";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("ทานคาร์โบไฮเดรต"),
        "current_in": MessageLookupByLibrary.simpleMessage("ใน"),
        "current_out": MessageLookupByLibrary.simpleMessage("ออก"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("ความแตกต่าง"),
        "fats": MessageLookupByLibrary.simpleMessage("ไขมัน"),
        "header_date": MessageLookupByLibrary.simpleMessage("วันที่"),
        "header_diff": MessageLookupByLibrary.simpleMessage("ความแตกต่าง"),
        "header_in": MessageLookupByLibrary.simpleMessage("ใน"),
        "header_out": MessageLookupByLibrary.simpleMessage("ออก"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("กำลังคำนวณข้อมูล..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "อาจใช้เวลาสักครู่สำหรับชุดข้อมูลที่ใหญ่ขึ้น"),
        "historic_macro": MessageLookupByLibrary.simpleMessage("ของ"),
        "info_heading": MessageLookupByLibrary.simpleMessage("ข้อมูล"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "แอพนี้ต้องการข้อมูลสุขภาพบางอย่างเพื่อให้ทำงานได้อย่างถูกต้อง\n\n หากข้อมูลดูไม่ถูกต้องหรือเป็น 0 เสมอ ตรวจสอบให้แน่ใจว่าแอปเข้าถึงที่จำเป็น\n\n โปรดตรวจสอบการตั้งค่า > สุขภาพ > ส่วนต่างแคลอรี่ และตรวจสอบให้แน่ใจว่าได้เปิดใช้งานค่าทั้ง 3 ค่าแล้ว"),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("ซ้าย"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("เกิน"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("ยินยอม"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("สิทธิ์ที่จำเป็น"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "เพื่อให้สามารถคำนวณความแตกต่างของแคลอรี่และแสดงมาโครได้ Calorie Diff จำเป็นต้องเข้าถึงการอนุญาตด้านสุขภาพต่อไปนี้:\n\n พลังงานที่ใช้งานพักผ่อนและอาหาร\n อาหารประเภทคาร์โบไฮเดรต ไขมัน และโปรตีน\n\n Calorie Diff ไม่ได้รวบรวมข้อมูลอื่นใด\n\n แตะ \'ให้สิทธิ์\' เพื่อดำเนินการต่อ"),
        "protein": MessageLookupByLibrary.simpleMessage("โปรตีน"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("เปิดใช้งานมาโคร"),
        "settings_save": MessageLookupByLibrary.simpleMessage("บันทึก"),
        "tab_current": MessageLookupByLibrary.simpleMessage("ปัจจุบัน"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("ประวัติศาสตร์"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("การตั้งค่า"),
        "title": MessageLookupByLibrary.simpleMessage("ความแตกต่างของแคลอรี่")
      };
}
