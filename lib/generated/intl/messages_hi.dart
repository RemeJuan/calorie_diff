// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hi locale. All the
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
  String get localeName => 'hi';

  static String m0(number) => "${number} दिन";

  static String m1(number) => "पिछले ${number} दिन";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("कार्बोहाइड्रेट"),
        "current_in": MessageLookupByLibrary.simpleMessage("में"),
        "current_out": MessageLookupByLibrary.simpleMessage("बाहर"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("अंतर"),
        "fats": MessageLookupByLibrary.simpleMessage("वसा"),
        "header_date": MessageLookupByLibrary.simpleMessage("तारीख"),
        "header_diff": MessageLookupByLibrary.simpleMessage("अंतर"),
        "header_in": MessageLookupByLibrary.simpleMessage("में"),
        "header_out": MessageLookupByLibrary.simpleMessage("बाहर"),
        "historic_calc": MessageLookupByLibrary.simpleMessage(
            "डेटा की गणना की जा रही है..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "बड़े डेटा सेट के लिए इसमें कुछ समय लग सकता है।"),
        "historic_macro": MessageLookupByLibrary.simpleMessage("का"),
        "info_heading": MessageLookupByLibrary.simpleMessage("जानकारी"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "सही ढंग से कार्य करने के लिए इस ऐप को कुछ स्वास्थ्य डेटा की आवश्यकता होती है।\n\n यदि डेटा सही नहीं दिखता है या हमेशा 0 होता है, तो सुनिश्चित करें कि ऐप को आवश्यक एक्सेस मिले।\n\n कृपया सेटिंग्स > स्वास्थ्य > कैलोरी डिफ की जांच करें, और सुनिश्चित करें कि सभी 3 मान सक्षम हैं।"),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("बाएं"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("ऊपर"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("अनुदान"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("आवश्यक अनुमतियाँ"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "अपने कैलोरी अंतर की गणना करने और आपको मैक्रोज़ प्रदर्शित करने में सक्षम होने के लिए, कैलोरी डिफ को निम्नलिखित स्वास्थ्य अनुमति तक पहुंच की आवश्यकता होती है:\n\n सक्रिय, आराम और आहार ऊर्जा\n आहार कार्ब्स, वसा और प्रोटीन\n\n कैलोरी डिफ कोई अन्य डेटा एकत्र नहीं करता है।\n\n जारी रखने के लिए \'अनुदान\' पर टैप करें।"),
        "protein": MessageLookupByLibrary.simpleMessage("प्रोटीन"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("मैक्रोज़ सक्षम करें"),
        "settings_save": MessageLookupByLibrary.simpleMessage("बचाना"),
        "tab_current": MessageLookupByLibrary.simpleMessage("मौजूदा"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("ऐतिहासिक"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("समायोजन"),
        "title": MessageLookupByLibrary.simpleMessage("कैलोरी डिफ")
      };
}
