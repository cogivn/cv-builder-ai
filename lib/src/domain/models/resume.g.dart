// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResumeImpl _$$ResumeImplFromJson(Map<String, dynamic> json) => _$ResumeImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      template: json['template'] as String,
      lastModified: DateTime.parse(json['lastModified'] as String),
      progress: (json['progress'] as num).toDouble(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ResumeImplToJson(_$ResumeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'template': instance.template,
      'lastModified': instance.lastModified.toIso8601String(),
      'progress': instance.progress,
      'description': instance.description,
    };
