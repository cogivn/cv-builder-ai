import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../generated/l10n.dart';

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
      return S.current.fileTypeNotSupported(allowedTypes.join(", "));
    }
    if (!isValidSize) {
      return S.current.fileSizeExceedsLimit(maxSizeInMB);
    }
    return null;
  }
} 