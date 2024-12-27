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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `No Data`
  String get common_no_data {
    return Intl.message(
      'No Data',
      name: 'common_no_data',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get common_ok {
    return Intl.message(
      'OK',
      name: 'common_ok',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get common_next {
    return Intl.message(
      'Next',
      name: 'common_next',
      desc: '',
      args: [],
    );
  }

  /// `N/A`
  String get common_not_applicable {
    return Intl.message(
      'N/A',
      name: 'common_not_applicable',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get common_confirm {
    return Intl.message(
      'Confirm',
      name: 'common_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get common_cancel {
    return Intl.message(
      'Cancel',
      name: 'common_cancel',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get common_or {
    return Intl.message(
      'OR',
      name: 'common_or',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get common_yes {
    return Intl.message(
      'Yes',
      name: 'common_yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get common_no {
    return Intl.message(
      'No',
      name: 'common_no',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get common_retry {
    return Intl.message(
      'Retry',
      name: 'common_retry',
      desc: '',
      args: [],
    );
  }

  /// `Network connection error`
  String get apiErrorNetwork {
    return Intl.message(
      'Network connection error',
      name: 'apiErrorNetwork',
      desc: 'Error message when network connection fails',
      args: [],
    );
  }

  /// `Internal server error`
  String get apiErrorServer {
    return Intl.message(
      'Internal server error',
      name: 'apiErrorServer',
      desc: 'Error message when server has internal error',
      args: [],
    );
  }

  /// `Unauthorized access`
  String get apiErrorUnauthorized {
    return Intl.message(
      'Unauthorized access',
      name: 'apiErrorUnauthorized',
      desc: 'Error message when user is not authorized',
      args: [],
    );
  }

  /// `Resource not found`
  String get apiErrorNotFound {
    return Intl.message(
      'Resource not found',
      name: 'apiErrorNotFound',
      desc: 'Error message when resource is not found',
      args: [],
    );
  }

  /// `Bad request`
  String get apiErrorBadRequest {
    return Intl.message(
      'Bad request',
      name: 'apiErrorBadRequest',
      desc: 'Error message when request is invalid',
      args: [],
    );
  }

  /// `Request cancelled`
  String get apiErrorCancelled {
    return Intl.message(
      'Request cancelled',
      name: 'apiErrorCancelled',
      desc: 'Error message when request is cancelled',
      args: [],
    );
  }

  /// `File type not supported. Allowed types: {allowedTypes}`
  String fileTypeNotSupported(Object allowedTypes) {
    return Intl.message(
      'File type not supported. Allowed types: $allowedTypes',
      name: 'fileTypeNotSupported',
      desc: 'Error message when file type is not supported',
      args: [allowedTypes],
    );
  }

  /// `File size exceeds maximum limit of {maxSizeInMB} MB`
  String fileSizeExceedsLimit(Object maxSizeInMB) {
    return Intl.message(
      'File size exceeds maximum limit of $maxSizeInMB MB',
      name: 'fileSizeExceedsLimit',
      desc: 'Error message when file size exceeds the limit',
      args: [maxSizeInMB],
    );
  }

  /// `Welcome back`
  String get loginWelcomeBack {
    return Intl.message(
      'Welcome back',
      name: 'loginWelcomeBack',
      desc: 'Title shown on the login page',
      args: [],
    );
  }

  /// `Enter your email to sign in to your account`
  String get loginSubtitle {
    return Intl.message(
      'Enter your email to sign in to your account',
      name: 'loginSubtitle',
      desc: 'Subtitle shown on the login page',
      args: [],
    );
  }

  /// `Enter your email`
  String get loginEmailPlaceholder {
    return Intl.message(
      'Enter your email',
      name: 'loginEmailPlaceholder',
      desc: 'Placeholder text for email input field',
      args: [],
    );
  }

  /// `Please enter your email`
  String get loginEmailRequired {
    return Intl.message(
      'Please enter your email',
      name: 'loginEmailRequired',
      desc: 'Validation message when email is empty',
      args: [],
    );
  }

  /// `Enter your password`
  String get loginPasswordPlaceholder {
    return Intl.message(
      'Enter your password',
      name: 'loginPasswordPlaceholder',
      desc: 'Placeholder text for password input field',
      args: [],
    );
  }

  /// `Please enter your password`
  String get loginPasswordRequired {
    return Intl.message(
      'Please enter your password',
      name: 'loginPasswordRequired',
      desc: 'Validation message when password is empty',
      args: [],
    );
  }

  /// `Sign in`
  String get loginSignInButton {
    return Intl.message(
      'Sign in',
      name: 'loginSignInButton',
      desc: 'Text for the sign in button',
      args: [],
    );
  }

  /// `Forgot password?`
  String get loginForgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'loginForgotPassword',
      desc: 'Text for the forgot password link',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get loginNoAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'loginNoAccount',
      desc: 'Text shown before the sign up link',
      args: [],
    );
  }

  /// `Sign up`
  String get loginSignUpButton {
    return Intl.message(
      'Sign up',
      name: 'loginSignUpButton',
      desc: 'Text for the sign up link',
      args: [],
    );
  }

  /// `Create an account`
  String get registerCreateAccount {
    return Intl.message(
      'Create an account',
      name: 'registerCreateAccount',
      desc: 'Title shown on the register page',
      args: [],
    );
  }

  /// `Enter your email below to create your account`
  String get registerSubtitle {
    return Intl.message(
      'Enter your email below to create your account',
      name: 'registerSubtitle',
      desc: 'Subtitle shown on the register page',
      args: [],
    );
  }

  /// `Enter your name`
  String get registerNamePlaceholder {
    return Intl.message(
      'Enter your name',
      name: 'registerNamePlaceholder',
      desc: 'Placeholder text for name input field',
      args: [],
    );
  }

  /// `Please enter your name`
  String get registerNameRequired {
    return Intl.message(
      'Please enter your name',
      name: 'registerNameRequired',
      desc: 'Validation message when name is empty',
      args: [],
    );
  }

  /// `Enter your email`
  String get registerEmailPlaceholder {
    return Intl.message(
      'Enter your email',
      name: 'registerEmailPlaceholder',
      desc: 'Placeholder text for email input field',
      args: [],
    );
  }

  /// `Please enter your email`
  String get registerEmailRequired {
    return Intl.message(
      'Please enter your email',
      name: 'registerEmailRequired',
      desc: 'Validation message when email is empty',
      args: [],
    );
  }

  /// `Enter your password`
  String get registerPasswordPlaceholder {
    return Intl.message(
      'Enter your password',
      name: 'registerPasswordPlaceholder',
      desc: 'Placeholder text for password input field',
      args: [],
    );
  }

  /// `Please enter your password`
  String get registerPasswordRequired {
    return Intl.message(
      'Please enter your password',
      name: 'registerPasswordRequired',
      desc: 'Validation message when password is empty',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get registerPasswordTooShort {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'registerPasswordTooShort',
      desc: 'Validation message when password is too short',
      args: [],
    );
  }

  /// `Sign up`
  String get registerSignUpButton {
    return Intl.message(
      'Sign up',
      name: 'registerSignUpButton',
      desc: 'Text for the sign up button',
      args: [],
    );
  }

  /// `Already have an account?`
  String get registerHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'registerHaveAccount',
      desc: 'Text shown before the sign in link',
      args: [],
    );
  }

  /// `Sign in`
  String get registerSignInButton {
    return Intl.message(
      'Sign in',
      name: 'registerSignInButton',
      desc: 'Text for the sign in link',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
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
