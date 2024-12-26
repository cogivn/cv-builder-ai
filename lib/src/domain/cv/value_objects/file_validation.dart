import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_validation.freezed.dart';

@freezed
class CVFile with _$CVFile {
  const factory CVFile({
    required String path,
    required String name,
    required String type,
    required double size,
  }) = _CVFile;

  const CVFile._();

  static const List<String> allowedTypes = ['pdf', 'docx', 'txt'];
  static const int maxSizeInMB = 10;

  bool get isValidType => allowedTypes.contains(type.toLowerCase());
  bool get isValidSize => size <= maxSizeInMB;
  bool get isValid => isValidType && isValidSize;

  String? get validationError {
    if (!isValidType) {
      return 'File type not supported. Allowed types: ${allowedTypes.join(", ")}';
    }
    if (!isValidSize) {
      return 'File size exceeds maximum limit of $maxSizeInMB MB';
    }
    return null;
  }
} 