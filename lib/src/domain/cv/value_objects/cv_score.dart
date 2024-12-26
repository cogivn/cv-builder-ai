import 'package:freezed_annotation/freezed_annotation.dart';

part 'cv_score.freezed.dart';

@freezed
class CVScore with _$CVScore {
  const factory CVScore({
    required double value,
    required String category,
    String? feedback,
  }) = _CVScore;

  const CVScore._();

  bool get isGood => value >= 80;
  bool get isAverage => value >= 60 && value < 80;
  bool get needsImprovement => value < 60;

  String get rating {
    if (isGood) return 'Good';
    if (isAverage) return 'Average';
    return 'Needs Improvement';
  }
} 