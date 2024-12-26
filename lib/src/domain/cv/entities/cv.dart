import 'package:freezed_annotation/freezed_annotation.dart';

part 'cv.freezed.dart';
part 'cv.g.dart';

@freezed
class CV with _$CV {
  const factory CV({
    required String id,
    required String userId,
    required String fileName,
    required String fileUrl,
    required String fileType,
    required double fileSize,
    required DateTime uploadedAt,
    required CVStatus status,
    CVAnalysis? analysis,
  }) = _CV;

  factory CV.fromJson(Map<String, dynamic> json) => _$CVFromJson(json);
}

@freezed
class CVAnalysis with _$CVAnalysis {
  const factory CVAnalysis({
    required double overallScore,
    required List<String> strengths,
    required List<String> weaknesses,
    required Map<String, double> sectionScores,
    required List<String> recommendations,
    required List<String> missingKeywords,
    required DateTime analyzedAt,
  }) = _CVAnalysis;

  factory CVAnalysis.fromJson(Map<String, dynamic> json) => _$CVAnalysisFromJson(json);
}

enum CVStatus {
  pending,
  analyzing,
  completed,
  failed
} 