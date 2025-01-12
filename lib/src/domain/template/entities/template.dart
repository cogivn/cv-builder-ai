import 'package:freezed_annotation/freezed_annotation.dart';

part 'template.freezed.dart';
part 'template.g.dart';

@freezed
class Template with _$Template {
  const factory Template({
    required String id,
    required String name,
    required String description,
    required String thumbnailUrl,
    required String category,
    required DateTime createdAt,
    required bool isPremium,
  }) = _Template;

  factory Template.fromJson(Map<String, dynamic> json) => _$TemplateFromJson(json);
}
