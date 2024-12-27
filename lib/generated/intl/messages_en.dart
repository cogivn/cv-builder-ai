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

  static String m0(maxSizeInMB) =>
      "File size exceeds maximum limit of ${maxSizeInMB} MB";

  static String m1(allowedTypes) =>
      "File type not supported. Allowed types: ${allowedTypes}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "apiErrorBadRequest":
            MessageLookupByLibrary.simpleMessage("Bad request"),
        "apiErrorCancelled":
            MessageLookupByLibrary.simpleMessage("Request cancelled"),
        "apiErrorNetwork":
            MessageLookupByLibrary.simpleMessage("Network connection error"),
        "apiErrorNotFound":
            MessageLookupByLibrary.simpleMessage("Resource not found"),
        "apiErrorServer":
            MessageLookupByLibrary.simpleMessage("Internal server error"),
        "apiErrorUnauthorized":
            MessageLookupByLibrary.simpleMessage("Unauthorized access"),
        "common_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "common_confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "common_next": MessageLookupByLibrary.simpleMessage("Next"),
        "common_no": MessageLookupByLibrary.simpleMessage("No"),
        "common_no_data": MessageLookupByLibrary.simpleMessage("No Data"),
        "common_not_applicable": MessageLookupByLibrary.simpleMessage("N/A"),
        "common_ok": MessageLookupByLibrary.simpleMessage("OK"),
        "common_or": MessageLookupByLibrary.simpleMessage("OR"),
        "common_retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "common_yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "fileSizeExceedsLimit": m0,
        "fileTypeNotSupported": m1
      };
}
