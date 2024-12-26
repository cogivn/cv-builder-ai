class Email {
  final String value;

  Email._(this.value);

  static Email? create(String input) {
    if (_isValid(input)) {
      return Email._(input);
    }
    return null;
  }

  static bool _isValid(String input) {
    return RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+').hasMatch(input);
  }
} 