// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ta locale. All the
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
  String get localeName => 'ta';

  static String m0(number) => "${number} நாட்கள்";

  static String m1(number) => "கடந்த ${number} நாட்கள்";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("கார்ப்ஸ்"),
        "current_in": MessageLookupByLibrary.simpleMessage("இல்"),
        "current_out": MessageLookupByLibrary.simpleMessage("வெளியே"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("வித்தியாசம்"),
        "fats": MessageLookupByLibrary.simpleMessage("கொழுப்புகள்"),
        "header_date": MessageLookupByLibrary.simpleMessage("தேதி"),
        "header_diff": MessageLookupByLibrary.simpleMessage("வேறுபாடு"),
        "header_in": MessageLookupByLibrary.simpleMessage("இல்"),
        "header_out": MessageLookupByLibrary.simpleMessage("வெளியே"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("தரவு கணக்கிடுகிறது..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "பெரிய தரவுத் தொகுப்புகளுக்கு இது சிறிது நேரம் ஆகலாம்."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("இன்"),
        "info_heading": MessageLookupByLibrary.simpleMessage("தகவல்"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "இந்த பயன்பாட்டிற்குச் சரியாகச் செயல்பட, குறிப்பிட்ட சுகாதாரத் தரவு தேவைப்படுகிறது.\n\n தரவு சரியாகத் தெரியவில்லை அல்லது எப்போதும் 0 ஆக இருந்தால், பயன்பாட்டிற்கு தேவையான அணுகலை உறுதிசெய்யவும்.\n\n அமைப்புகள் > உடல்நலம் > கலோரி வேறுபாடுகளைச் சரிபார்த்து, 3 மதிப்புகளும் இயக்கப்பட்டுள்ளதா என்பதை உறுதிப்படுத்தவும்."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("விட்டு"),
        "macro_prefix_over":
            MessageLookupByLibrary.simpleMessage("முடிந்துவிட்டது"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("மானியம்"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("தேவையான அனுமதிகள்"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "உங்கள் கலோரி வேறுபாடுகளைக் கணக்கிடுவதற்கும், மேக்ரோக்களைக் காட்டுவதற்கும், கலோரி டிஃப்பின் பின்வரும் சுகாதார அனுமதியைப் பெற வேண்டும்:\n\n செயலில், ஓய்வு மற்றும் உணவு ஆற்றல்\n உணவு கார்போஹைட்ரேட்டுகள், கொழுப்புகள் மற்றும் புரதம்\n\n கலோரி டிஃப் வேறு எந்த தரவையும் சேகரிக்காது.\n\n தொடர, \'கிராண்ட்\' என்பதைத் தட்டவும்."),
        "protein": MessageLookupByLibrary.simpleMessage("புரத"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("மேக்ரோக்களை இயக்கு"),
        "settings_save": MessageLookupByLibrary.simpleMessage("சேமிக்கவும்"),
        "tab_current": MessageLookupByLibrary.simpleMessage("தற்போதைய"),
        "tab_historic":
            MessageLookupByLibrary.simpleMessage("வரலாற்று சிறப்புமிக்கது"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("அமைப்புகள்"),
        "title": MessageLookupByLibrary.simpleMessage("கலோரி வேறுபாடு")
      };
}
