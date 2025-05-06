// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `The connection to the server timed out. Please check your network connection and try again.`
  String get connectTimeout {
    return Intl.message(
      'The connection to the server timed out. Please check your network connection and try again.',
      name: 'connectTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Sending the request took too long. Please verify your connection and try again.`
  String get sendTimeout {
    return Intl.message(
      'Sending the request took too long. Please verify your connection and try again.',
      name: 'sendTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for the server response took too long. Please try again later.`
  String get receiveTimeout {
    return Intl.message(
      'Waiting for the server response took too long. Please try again later.',
      name: 'receiveTimeout',
      desc: '',
      args: [],
    );
  }

  /// `The operation was canceled by the user.`
  String get cancelMessage {
    return Intl.message(
      'The operation was canceled by the user.',
      name: 'cancelMessage',
      desc: '',
      args: [],
    );
  }

  /// `The request was invalid or malformed. Please verify your input and try again.`
  String get badRequest {
    return Intl.message(
      'The request was invalid or malformed. Please verify your input and try again.',
      name: 'badRequest',
      desc: '',
      args: [],
    );
  }

  /// `An unknown error occurred. Please try again later.`
  String get unknown {
    return Intl.message(
      'An unknown error occurred. Please try again later.',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `You are not authorized. Please log in and try again.`
  String get unauthorized {
    return Intl.message(
      'You are not authorized. Please log in and try again.',
      name: 'unauthorized',
      desc: '',
      args: [],
    );
  }

  /// `Access is forbidden. You do not have permission to perform this action.`
  String get forbidden {
    return Intl.message(
      'Access is forbidden. You do not have permission to perform this action.',
      name: 'forbidden',
      desc: '',
      args: [],
    );
  }

  /// `The requested resource was not found on the server.`
  String get notFound {
    return Intl.message(
      'The requested resource was not found on the server.',
      name: 'notFound',
      desc: '',
      args: [],
    );
  }

  /// `The server encountered an internal error. Please try again later.`
  String get serverError {
    return Intl.message(
      'The server encountered an internal error. Please try again later.',
      name: 'serverError',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error occurred. Please try again later.`
  String get unknownError {
    return Intl.message(
      'An unexpected error occurred. Please try again later.',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `The operation timed out. Please check your network and try again.`
  String get timeout {
    return Intl.message(
      'The operation timed out. Please check your network and try again.',
      name: 'timeout',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message('Loading...', name: 'loading', desc: '', args: []);
  }

  /// `An error occurred while connecting to the server. Please try again later.`
  String get connectionError {
    return Intl.message(
      'An error occurred while connecting to the server. Please try again later.',
      name: 'connectionError',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Change Theme`
  String get changeTheme {
    return Intl.message(
      'Change Theme',
      name: 'changeTheme',
      desc: '',
      args: [],
    );
  }

  /// `PM`
  String get pm {
    return Intl.message('PM', name: 'pm', desc: '', args: []);
  }

  /// `AM`
  String get am {
    return Intl.message('AM', name: 'am', desc: '', args: []);
  }

  /// `This field is required`
  String get fieldRequired {
    return Intl.message(
      'This field is required',
      name: 'fieldRequired',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
