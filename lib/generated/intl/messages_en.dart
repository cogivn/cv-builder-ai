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

  static String m0(days) => "Last edited ${days} days ago";

  static String m1(maxSizeInMB) =>
      "File size exceeds maximum limit of ${maxSizeInMB} MB";

  static String m2(allowedTypes) =>
      "File type not supported. Allowed types: ${allowedTypes}";

  static String m3(day, month, year) => "${day}/${month}/${year}";

  static String m4(days) => "${days} days ago";

  static String m5(progress) => "${progress}%";

  static String m6(size) => "${size} KB";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "accountHelpAndFeedback":
            MessageLookupByLibrary.simpleMessage("Help & feedback"),
        "accountManageAccount":
            MessageLookupByLibrary.simpleMessage("Manage your Account"),
        "accountPrivacyPolicy":
            MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "accountSettings": MessageLookupByLibrary.simpleMessage("Settings"),
        "accountTermsOfService":
            MessageLookupByLibrary.simpleMessage("Terms of Service"),
        "analysisAIProcessingInfo": MessageLookupByLibrary.simpleMessage(
            "Your resume has been processed with AI to extract skills, experience, and more."),
        "analysisCompleteDescription": MessageLookupByLibrary.simpleMessage(
            "We\'ve successfully analyzed your resume.\nView the detailed analysis to see what we found."),
        "analysisCompleteTitle":
            MessageLookupByLibrary.simpleMessage("Analysis Complete!"),
        "analysisDismissButton":
            MessageLookupByLibrary.simpleMessage("Dismiss"),
        "analysisViewButton":
            MessageLookupByLibrary.simpleMessage("View Analysis"),
        "analyzingDescription": MessageLookupByLibrary.simpleMessage(
            "Our AI is carefully reviewing your resume.\nThis may take a few minutes."),
        "analyzingNotification": MessageLookupByLibrary.simpleMessage(
            "Feel free to explore other sections. We\'ll notify you when the analysis is complete."),
        "analyzingProgressDescription": MessageLookupByLibrary.simpleMessage(
            "Extracting skills, experience, and qualifications"),
        "analyzingProgressTitle":
            MessageLookupByLibrary.simpleMessage("AI Analysis in Progress"),
        "analyzingSkipButton": MessageLookupByLibrary.simpleMessage("Skip"),
        "analyzingTitle":
            MessageLookupByLibrary.simpleMessage("Analyzing Your Resume"),
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
        "appTitle": MessageLookupByLibrary.simpleMessage("CV Builder AI"),
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
        "dashboardAIAnalysis":
            MessageLookupByLibrary.simpleMessage("AI Analysis"),
        "dashboardCreateCV": MessageLookupByLibrary.simpleMessage("Create CV"),
        "dashboardJobMatches":
            MessageLookupByLibrary.simpleMessage("Job Matches"),
        "dashboardLastEdited": m0,
        "dashboardMyCVs": MessageLookupByLibrary.simpleMessage("My CVs"),
        "dashboardQuickActions":
            MessageLookupByLibrary.simpleMessage("Quick Actions"),
        "dashboardRecentActivity":
            MessageLookupByLibrary.simpleMessage("Recent Activity"),
        "dashboardWelcomeBack":
            MessageLookupByLibrary.simpleMessage("Welcome back,"),
        "fileSizeExceedsLimit": m1,
        "fileTypeNotSupported": m2,
        "loginEmailPlaceholder":
            MessageLookupByLibrary.simpleMessage("Enter your email"),
        "loginEmailRequired":
            MessageLookupByLibrary.simpleMessage("Please enter your email"),
        "loginForgotPassword":
            MessageLookupByLibrary.simpleMessage("Forgot password?"),
        "loginNoAccount":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "loginPasswordPlaceholder":
            MessageLookupByLibrary.simpleMessage("Enter your password"),
        "loginPasswordRequired":
            MessageLookupByLibrary.simpleMessage("Please enter your password"),
        "loginSignInButton": MessageLookupByLibrary.simpleMessage("Sign in"),
        "loginSignUpButton": MessageLookupByLibrary.simpleMessage("Sign up"),
        "loginSubtitle": MessageLookupByLibrary.simpleMessage(
            "Enter your email to sign in to your account"),
        "loginWelcomeBack":
            MessageLookupByLibrary.simpleMessage("Welcome back"),
        "quickActionsBrowseTemplates":
            MessageLookupByLibrary.simpleMessage("Browse Templates"),
        "quickActionsCreateResume":
            MessageLookupByLibrary.simpleMessage("Create Resume"),
        "quickActionsImportResume":
            MessageLookupByLibrary.simpleMessage("Analyze Resume"),
        "quickActionsTitle":
            MessageLookupByLibrary.simpleMessage("Quick Actions"),
        "registerCreateAccount":
            MessageLookupByLibrary.simpleMessage("Create an account"),
        "registerEmailPlaceholder":
            MessageLookupByLibrary.simpleMessage("Enter your email"),
        "registerEmailRequired":
            MessageLookupByLibrary.simpleMessage("Please enter your email"),
        "registerHaveAccount":
            MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "registerNamePlaceholder":
            MessageLookupByLibrary.simpleMessage("Enter your name"),
        "registerNameRequired":
            MessageLookupByLibrary.simpleMessage("Please enter your name"),
        "registerPasswordPlaceholder":
            MessageLookupByLibrary.simpleMessage("Enter your password"),
        "registerPasswordRequired":
            MessageLookupByLibrary.simpleMessage("Please enter your password"),
        "registerPasswordTooShort": MessageLookupByLibrary.simpleMessage(
            "Password must be at least 6 characters"),
        "registerSignInButton": MessageLookupByLibrary.simpleMessage("Sign in"),
        "registerSignUpButton": MessageLookupByLibrary.simpleMessage("Sign up"),
        "registerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Enter your email below to create your account"),
        "resumePickerModifiedDate": m3,
        "resumePickerModifiedDaysAgo": m4,
        "resumePickerModifiedToday":
            MessageLookupByLibrary.simpleMessage("Today"),
        "resumePickerModifiedYesterday":
            MessageLookupByLibrary.simpleMessage("Yesterday"),
        "resumePickerSubtitle":
            MessageLookupByLibrary.simpleMessage("Choose a resume to analyze"),
        "resumePickerTitle":
            MessageLookupByLibrary.simpleMessage("Select Resume"),
        "uploadProgressPercentage": m5,
        "uploadProgressTitle":
            MessageLookupByLibrary.simpleMessage("Uploading Resume..."),
        "uploadResumeAnalyzeButton":
            MessageLookupByLibrary.simpleMessage("Upload Resume"),
        "uploadResumeChooseFile":
            MessageLookupByLibrary.simpleMessage("Choose File"),
        "uploadResumeDragDrop": MessageLookupByLibrary.simpleMessage(
            "or drag and drop your file here"),
        "uploadResumeFileSize": m6,
        "uploadResumeOrText": MessageLookupByLibrary.simpleMessage("OR"),
        "uploadResumePageTitleAnalyze":
            MessageLookupByLibrary.simpleMessage("Analyze Your Resume"),
        "uploadResumePageTitleUpload":
            MessageLookupByLibrary.simpleMessage("Upload Your Resume"),
        "uploadResumeSelectExisting":
            MessageLookupByLibrary.simpleMessage("Select from Your Resumes"),
        "uploadResumeSupportedFormats": MessageLookupByLibrary.simpleMessage(
            "Supported formats: PDF, DOC, DOCX"),
        "uploadResumeTitle":
            MessageLookupByLibrary.simpleMessage("Upload Your Resume"),
        "uploadResumeUploadButton":
            MessageLookupByLibrary.simpleMessage("Upload Resume")
      };
}
