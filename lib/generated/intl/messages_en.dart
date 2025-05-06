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

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "am": MessageLookupByLibrary.simpleMessage("AM"),
    "badRequest": MessageLookupByLibrary.simpleMessage(
      "The request was invalid or malformed. Please verify your input and try again.",
    ),
    "cancelMessage": MessageLookupByLibrary.simpleMessage(
      "The operation was canceled by the user.",
    ),
    "changeLanguage": MessageLookupByLibrary.simpleMessage("Change Language"),
    "changeTheme": MessageLookupByLibrary.simpleMessage("Change Theme"),
    "connectTimeout": MessageLookupByLibrary.simpleMessage(
      "The connection to the server timed out. Please check your network connection and try again.",
    ),
    "connectionError": MessageLookupByLibrary.simpleMessage(
      "An error occurred while connecting to the server. Please try again later.",
    ),
    "fieldRequired": MessageLookupByLibrary.simpleMessage(
      "This field is required",
    ),
    "forbidden": MessageLookupByLibrary.simpleMessage(
      "Access is forbidden. You do not have permission to perform this action.",
    ),
    "loading": MessageLookupByLibrary.simpleMessage("Loading..."),
    "notFound": MessageLookupByLibrary.simpleMessage(
      "The requested resource was not found on the server.",
    ),
    "pm": MessageLookupByLibrary.simpleMessage("PM"),
    "receiveTimeout": MessageLookupByLibrary.simpleMessage(
      "Waiting for the server response took too long. Please try again later.",
    ),
    "sendTimeout": MessageLookupByLibrary.simpleMessage(
      "Sending the request took too long. Please verify your connection and try again.",
    ),
    "serverError": MessageLookupByLibrary.simpleMessage(
      "The server encountered an internal error. Please try again later.",
    ),
    "timeout": MessageLookupByLibrary.simpleMessage(
      "The operation timed out. Please check your network and try again.",
    ),
    "unauthorized": MessageLookupByLibrary.simpleMessage(
      "You are not authorized. Please log in and try again.",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage(
      "An unknown error occurred. Please try again later.",
    ),
    "unknownError": MessageLookupByLibrary.simpleMessage(
      "An unexpected error occurred. Please try again later.",
    ),
  };
}
