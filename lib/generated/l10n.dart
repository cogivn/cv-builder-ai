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

  /// `Welcome back,`
  String get dashboardWelcomeBack {
    return Intl.message(
      'Welcome back,',
      name: 'dashboardWelcomeBack',
      desc: 'Welcome message on dashboard',
      args: [],
    );
  }

  /// `Quick Actions`
  String get dashboardQuickActions {
    return Intl.message(
      'Quick Actions',
      name: 'dashboardQuickActions',
      desc: 'Title for quick actions section',
      args: [],
    );
  }

  /// `Create CV`
  String get dashboardCreateCV {
    return Intl.message(
      'Create CV',
      name: 'dashboardCreateCV',
      desc: 'Button to create new CV',
      args: [],
    );
  }

  /// `My CVs`
  String get dashboardMyCVs {
    return Intl.message(
      'My CVs',
      name: 'dashboardMyCVs',
      desc: 'Button to view user\'s CVs',
      args: [],
    );
  }

  /// `AI Analysis`
  String get dashboardAIAnalysis {
    return Intl.message(
      'AI Analysis',
      name: 'dashboardAIAnalysis',
      desc: 'Button to access AI analysis features',
      args: [],
    );
  }

  /// `Job Matches`
  String get dashboardJobMatches {
    return Intl.message(
      'Job Matches',
      name: 'dashboardJobMatches',
      desc: 'Button to view job matches',
      args: [],
    );
  }

  /// `Recent Activity`
  String get dashboardRecentActivity {
    return Intl.message(
      'Recent Activity',
      name: 'dashboardRecentActivity',
      desc: 'Title for recent activity section',
      args: [],
    );
  }

  /// `Last edited {days} days ago`
  String dashboardLastEdited(String days) {
    return Intl.message(
      'Last edited $days days ago',
      name: 'dashboardLastEdited',
      desc: 'Shows when a CV was last edited',
      args: [days],
    );
  }

  /// `CV Builder AI`
  String get appTitle {
    return Intl.message(
      'CV Builder AI',
      name: 'appTitle',
      desc: 'The title of the application',
      args: [],
    );
  }

  /// `Manage your Account`
  String get accountManageAccount {
    return Intl.message(
      'Manage your Account',
      name: 'accountManageAccount',
      desc: 'Manage account option in account bottom sheet',
      args: [],
    );
  }

  /// `Settings`
  String get accountSettings {
    return Intl.message(
      'Settings',
      name: 'accountSettings',
      desc: 'Settings option in account bottom sheet',
      args: [],
    );
  }

  /// `Help & feedback`
  String get accountHelpAndFeedback {
    return Intl.message(
      'Help & feedback',
      name: 'accountHelpAndFeedback',
      desc: 'Help and feedback option in account bottom sheet',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get accountPrivacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'accountPrivacyPolicy',
      desc: 'Privacy policy option in account bottom sheet',
      args: [],
    );
  }

  /// `Terms of Service`
  String get accountTermsOfService {
    return Intl.message(
      'Terms of Service',
      name: 'accountTermsOfService',
      desc: 'Terms of service option in account bottom sheet',
      args: [],
    );
  }

  /// `Quick Actions`
  String get quickActionsTitle {
    return Intl.message(
      'Quick Actions',
      name: 'quickActionsTitle',
      desc: 'Title for the quick actions section',
      args: [],
    );
  }

  /// `Create Resume`
  String get quickActionsCreateResume {
    return Intl.message(
      'Create Resume',
      name: 'quickActionsCreateResume',
      desc: 'Title for create resume quick action',
      args: [],
    );
  }

  /// `Upload Resume`
  String get quickActionsImportResume {
    return Intl.message(
      'Upload Resume',
      name: 'quickActionsImportResume',
      desc: 'Title for import resume quick action',
      args: [],
    );
  }

  /// `Browse Templates`
  String get quickActionsBrowseTemplates {
    return Intl.message(
      'Browse Templates',
      name: 'quickActionsBrowseTemplates',
      desc: 'Title for browse templates quick action',
      args: [],
    );
  }

  /// `Analysis Complete!`
  String get analysisCompleteTitle {
    return Intl.message(
      'Analysis Complete!',
      name: 'analysisCompleteTitle',
      desc: 'Title shown when resume analysis is complete',
      args: [],
    );
  }

  /// `We've successfully analyzed your resume.\nView the detailed analysis to see what we found.`
  String get analysisCompleteDescription {
    return Intl.message(
      'We\'ve successfully analyzed your resume.\nView the detailed analysis to see what we found.',
      name: 'analysisCompleteDescription',
      desc: 'Description shown when resume analysis is complete',
      args: [],
    );
  }

  /// `Your resume has been processed with AI to extract skills, experience, and more.`
  String get analysisAIProcessingInfo {
    return Intl.message(
      'Your resume has been processed with AI to extract skills, experience, and more.',
      name: 'analysisAIProcessingInfo',
      desc: 'Information about AI processing of the resume',
      args: [],
    );
  }

  /// `View Analysis`
  String get analysisViewButton {
    return Intl.message(
      'View Analysis',
      name: 'analysisViewButton',
      desc: 'Button text to view the analysis',
      args: [],
    );
  }

  /// `Dismiss`
  String get analysisDismissButton {
    return Intl.message(
      'Dismiss',
      name: 'analysisDismissButton',
      desc: 'Button text to dismiss the analysis completion view',
      args: [],
    );
  }

  /// `Analyzing Your Resume`
  String get analyzingTitle {
    return Intl.message(
      'Analyzing Your Resume',
      name: 'analyzingTitle',
      desc: 'Title shown while analyzing resume',
      args: [],
    );
  }

  /// `Our AI is carefully reviewing your resume.\nThis may take a few minutes.`
  String get analyzingDescription {
    return Intl.message(
      'Our AI is carefully reviewing your resume.\nThis may take a few minutes.',
      name: 'analyzingDescription',
      desc: 'Description shown while analyzing resume',
      args: [],
    );
  }

  /// `AI Analysis in Progress`
  String get analyzingProgressTitle {
    return Intl.message(
      'AI Analysis in Progress',
      name: 'analyzingProgressTitle',
      desc: 'Title for the progress section while analyzing',
      args: [],
    );
  }

  /// `Extracting skills, experience, and qualifications`
  String get analyzingProgressDescription {
    return Intl.message(
      'Extracting skills, experience, and qualifications',
      name: 'analyzingProgressDescription',
      desc: 'Description of what\'s being extracted during analysis',
      args: [],
    );
  }

  /// `Feel free to explore other sections. We'll notify you when the analysis is complete.`
  String get analyzingNotification {
    return Intl.message(
      'Feel free to explore other sections. We\'ll notify you when the analysis is complete.',
      name: 'analyzingNotification',
      desc: 'Message informing user they can explore while waiting',
      args: [],
    );
  }

  /// `Skip`
  String get analyzingSkipButton {
    return Intl.message(
      'Skip',
      name: 'analyzingSkipButton',
      desc: 'Button text to skip the analysis',
      args: [],
    );
  }

  /// `Upload Your Resume`
  String get uploadResumeTitle {
    return Intl.message(
      'Upload Your Resume',
      name: 'uploadResumeTitle',
      desc: 'Title for the upload resume section',
      args: [],
    );
  }

  /// `Supported formats: PDF, DOC, DOCX`
  String get uploadResumeSupportedFormats {
    return Intl.message(
      'Supported formats: PDF, DOC, DOCX',
      name: 'uploadResumeSupportedFormats',
      desc: 'Text showing supported file formats',
      args: [],
    );
  }

  /// `Choose File`
  String get uploadResumeChooseFile {
    return Intl.message(
      'Choose File',
      name: 'uploadResumeChooseFile',
      desc: 'Button text to choose a file',
      args: [],
    );
  }

  /// `Upload Resume`
  String get uploadResumeUploadButton {
    return Intl.message(
      'Upload Resume',
      name: 'uploadResumeUploadButton',
      desc: 'Button text to upload the selected resume',
      args: [],
    );
  }

  /// `or drag and drop your file here`
  String get uploadResumeDragDrop {
    return Intl.message(
      'or drag and drop your file here',
      name: 'uploadResumeDragDrop',
      desc: 'Text suggesting drag and drop functionality',
      args: [],
    );
  }

  /// `{size} KB`
  String uploadResumeFileSize(Object size) {
    return Intl.message(
      '$size KB',
      name: 'uploadResumeFileSize',
      desc: 'Text showing file size in KB',
      args: [size],
    );
  }

  /// `Uploading Resume...`
  String get uploadProgressTitle {
    return Intl.message(
      'Uploading Resume...',
      name: 'uploadProgressTitle',
      desc: 'Title shown while uploading resume',
      args: [],
    );
  }

  /// `{progress}%`
  String uploadProgressPercentage(Object progress) {
    return Intl.message(
      '$progress%',
      name: 'uploadProgressPercentage',
      desc: 'Text showing upload progress percentage',
      args: [progress],
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
