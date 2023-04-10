// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a he locale. All the
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
  String get localeName => 'he';

  static String m0(number) => "${number} ימים";

  static String m1(number) => "${number} הימים האחרונים";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "carbs": MessageLookupByLibrary.simpleMessage("פחמימות"),
        "current_in": MessageLookupByLibrary.simpleMessage("ב"),
        "current_out": MessageLookupByLibrary.simpleMessage("הַחוּצָה"),
        "days_select": m0,
        "difference": MessageLookupByLibrary.simpleMessage("הֶבדֵל"),
        "fats": MessageLookupByLibrary.simpleMessage("שומנים"),
        "header_date": MessageLookupByLibrary.simpleMessage("תַאֲרִיך"),
        "header_diff": MessageLookupByLibrary.simpleMessage("הבדל"),
        "header_in": MessageLookupByLibrary.simpleMessage("ב"),
        "header_out": MessageLookupByLibrary.simpleMessage("הַחוּצָה"),
        "historic_calc": MessageLookupByLibrary.simpleMessage("מחשב נתונים..."),
        "historic_info": MessageLookupByLibrary.simpleMessage(
            "זה עשוי להימשך זמן מה עבור מערכי נתונים גדולים יותר."),
        "historic_macro": MessageLookupByLibrary.simpleMessage("שֶׁל"),
        "info_heading": MessageLookupByLibrary.simpleMessage("מידע"),
        "info_text": MessageLookupByLibrary.simpleMessage(
            "אפליקציה זו דורשת נתוני בריאות מסוימים כדי לתפקד כהלכה.\n\n אם הנתונים לא נראים נכונים או שהם תמיד 0, ודא שהאפליקציה הגישה הנדרשת.\n\n אנא בדוק הגדרות > בריאות > הבדל קלוריות וודא שכל שלושת הערכים מופעלים."),
        "macro_prefix_left": MessageLookupByLibrary.simpleMessage("שמאלה"),
        "macro_prefix_over": MessageLookupByLibrary.simpleMessage("על"),
        "past_days": m1,
        "permissions_grant": MessageLookupByLibrary.simpleMessage("מענק"),
        "permissions_heading":
            MessageLookupByLibrary.simpleMessage("הרשאות נדרשות"),
        "permissions_text": MessageLookupByLibrary.simpleMessage(
            "כדי שתוכל לחשב את הבדלי הקלוריות שלך ולהציג לך פקודות מאקרו, Calorie Diff דורשת גישה להרשאת הבריאות הבאה:\n\n אנרגיה פעילה, מנוחה ותזונה\n פחמימות, שומנים וחלבונים בתזונה\n\n Calorie Diff אינו אוסף נתונים אחרים.\n\n הקש על \'הענקה\' כדי להמשיך."),
        "protein": MessageLookupByLibrary.simpleMessage("חֶלְבּוֹן"),
        "settings_enable_macros":
            MessageLookupByLibrary.simpleMessage("אפשר פקודות מאקרו"),
        "settings_save": MessageLookupByLibrary.simpleMessage("להציל"),
        "tab_current": MessageLookupByLibrary.simpleMessage("נוֹכְחִי"),
        "tab_historic": MessageLookupByLibrary.simpleMessage("הִיסטוֹרִי"),
        "tab_settings": MessageLookupByLibrary.simpleMessage("הגדרות"),
        "title": MessageLookupByLibrary.simpleMessage("הבדל קלוריות")
      };
}
