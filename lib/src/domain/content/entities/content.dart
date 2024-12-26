import 'package:freezed_annotation/freezed_annotation.dart';

part 'content.freezed.dart';

@freezed
class Resource with _$Resource {
  const factory Resource({
    required String id,
    required String title,
    required String description,
    required ResourceType type,
    required String contentUrl,
    required List<String> tags,
    required bool isPremium,
    required DateTime createdAt,
  }) = _Resource;
}

@freezed
class Template with _$Template {
  const factory Template({
    required String id,
    required String name,
    required String description,
    required String previewUrl,
    required String downloadUrl,
    required List<String> industries,
    required bool isPremium,
    required int downloads,
  }) = _Template;
}

enum ResourceType {
  guide,
  template,
  video,
  article
} 