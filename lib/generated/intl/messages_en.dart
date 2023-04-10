// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(number) => "${number} days";

  static String m1(number) => "Past ${number} days";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("Carbs"),
        "current_in": MessageLookupByLibrary.simpleMessage("In"),
        "current_out": MessageLookupByLibrary.simpleMessage("Out"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("Difference"),
        "fats": MessageLookupByLibrary.simpleMessage("Fats"),
        "header_date": MessageLookupByLibrary.simpleMessage("Date"),
        "header_diff": MessageLookupByLibrary.simpleMessage("Diff"),
        "header_in": MessageLookupByLibrary.simpleMessage("In"),
        "header_out": MessageLookupByLibrary.simpleMessage("Out"),
        "historic_calc":
            MessageLookupByLibrary.simpleMessage("Calculating data..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "This may take a while for larger data sets."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("of"),
        "info_heading": MessageLookupByLibrary.simpleMessage("Info"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "This app requires certain Health Data in order to function correctly. \n\n If the data does not look correct or is always 0, ensure that the app the required access. \n\n Please check Settings > Health > Calorie Diff, and make sure all 3 values are enabled."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("Left"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("Over"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("Grant"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("Required Permissions"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "In order to be able to calculate your calorie differences and display you macros, Calorie Diff requires access to the following Health permission: \n\n Active, Resting and Dietary Energy \n Dietary Carbs, Fats and Protein \n\n Calorie Diff does not collect any other data. \n\n Tap \'Grant\' to continue."),
        "protein": MessageLookupByLibrary.simpleMessage("Protein"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("Enable macros"),
        "settings_save": MessageLookupByLibrary.simpleMessage("Save"),
        "tab_current": MessageLookupByLibrary.simpleMessage("Current"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("Historic"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "title": MessageLookupByLibrary.simpleMessage("Calorie Diff")
      };
}
