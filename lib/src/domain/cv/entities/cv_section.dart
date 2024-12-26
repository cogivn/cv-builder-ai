import 'package:freezed_annotation/freezed_annotation.dart';

part 'cv_section.freezed.dart';
part 'cv_section.g.dart';

@freezed
class CVSection with _$CVSection {
  const factory CVSection({
    required String name,
    required double score,
    required List<String> feedback,
    required List<String> suggestions,
  }) = _CVSection;

  factory CVSection.fromJson(Map<String, dynamic> json) => _$CVSectionFromJson(json);
}

enum CVSectionType {
  header,
  summary,
  experience,
  education,
  skills,
  projects,
  certifications,
  languages,
  interests
} 