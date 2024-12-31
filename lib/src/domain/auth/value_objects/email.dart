import 'package:freezed_annotation/freezed_annotation.dart';

part 'email.freezed.dart';

@freezed
class Email with _$Email {
  const factory Email(String value) = _Email;

  const Email._();

  static bool isValidData(String value) {
    if (value.isEmpty) return false;

    // RFC 5322 standard email validation
    return RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    ).hasMatch(value);
  }

  bool get isValid => Email.isValidData(value);
}
