import 'package:freezed_annotation/freezed_annotation.dart';

part 'password.freezed.dart';

@freezed
class Password with _$Password {
  const factory Password(String value) = _Password;

  const Password._();

  static Password? create(String input) {
    if (input.length < 6) return null;
    return Password(input);
  }

  bool get isValid => value.length >= 6;
} 